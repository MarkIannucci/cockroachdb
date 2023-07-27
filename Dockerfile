FROM cockroachdb/cockroach:v23.1.6

ADD init_cluster.sh /cockroach/
ADD start_fly.sh /cockroach/