import speedtest


def test_speed():
    st = speedtest.Speedtest()
    st.get_best_server()
    # Convert from bits/s to Mbits/s
    download_speed = st.download() / 1_000_000
    # Convert from bits/s to Mbits/s
    upload_speed = st.upload() / 1_000_000

    # Measure ping
    ping_result = st.results.ping

    print(f"Download Speed: {download_speed:.2f} Mbps")
    print(f"Upload Speed: {upload_speed:.2f} Mbps")
    print(f"Ping: {ping_result} ms")


if __name__ == "__main__":
    test_speed()
