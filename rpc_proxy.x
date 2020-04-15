struct dest_host{
  string host<>;
  int port;
};

struct p_message{
  string ct<100>;
  int length;
  int fd;
};

program rpc_proxy_program{
  version rpc_proxy_ver{
    int connect_proxy(dest_host) = 1;
    int send_proxy(p_message) = 2;
    int recv_proxy(p_message) = 3;
    int close_proxy(int) = 4;
  } = 1;
} = 0x40102103;