data{
    int N;                  // total number of responses
    int N_id;               // number of interviewees
    array[N] int id;        // interviewee ID for observation n
    int M;                  // number of items
    array[N] int y;         // response for rank1 vs rank2 question
    array[N] int item1;     // questions rank1 for observation n
    array[N] int item2;    // questions rank2 for observation n
}

parameters{
    vector[M] z;
    real<lower=0> sigma;
    real<lower=1> theta;
}

model{
    vector[N] a1;
    vector[N] a2;
    theta ~ normal( 1 , 1 );
    sigma ~ exponential( 1 );
    z ~ normal( 0 , 1 );
    for ( i in 1:N ) {
        a2[i] = 0 + z[item2[i]] * sigma;
    }
    for ( i in 1:N ) {
        a1[i] = 0 + z[item1[i]] * sigma;
    }
    for ( i in 1:N ) 
        if ( y[i] == 0 ) target += log((theta^2 - 1) * exp(a1[i]) * exp(a2[i])) - log((exp(a1[i]) + theta * exp(a2[i])) * (exp(a1[i]) + theta * exp(a2[i])));
    for ( i in 1:N ) 
        if ( y[i] == 2 ) target += -log(1 + theta * exp(a1[i] - a2[i]));
    for ( i in 1:N ) 
        if ( y[i] == 1 ) target += -log(1 + theta * exp(a2[i] - a1[i]));
}

