.class public Landroid/taobao/windvane/connect/HttpConnector;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/connect/HttpConnector$RedirectException;,
        Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;,
        Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;,
        Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;
    }
.end annotation


# static fields
.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final IF_MODIFY_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final REDIRECT_LOCATION:Ljava/lang/String; = "location"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "response-code"

.field public static final SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field private static TAG:Ljava/lang/String; = "HttpConnector"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private mListener:Landroid/taobao/windvane/connect/HttpConnectListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/connect/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private redirectTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/taobao/windvane/connect/HttpConnector;->redirectTime:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    return-void
.end method

.method private dataConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;,
            Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;,
            Landroid/taobao/windvane/connect/HttpConnector$RedirectException;,
            Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "http"

    const-string/jumbo v4, "too many redirect"

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 2
    iget-object v6, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v6, :cond_0

    .line 3
    invoke-virtual {v6}, Landroid/taobao/windvane/connect/HttpConnectListener;->onStart()V

    .line 4
    :cond_0
    new-instance v6, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {v6}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    .line 5
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 6
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 7
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_0 .. :try_end_0} :catch_2e
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_0 .. :try_end_0} :catch_2d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_28
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_23
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v7, :cond_3

    .line 9
    :try_start_1
    sget-object v7, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "proxy or https"

    invoke-static {v7, v14}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v7, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v7}, Landroid/taobao/windvane/util/NetWork;->getHttpsProxyInfo(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 11
    new-instance v14, Landroid/taobao/windvane/security/SSLTunnelSocketFactory;

    invoke-virtual {v7}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    const-string/jumbo v9, "taobao_hybrid_8.5.0"

    invoke-direct {v14, v15, v7, v11, v9}, Landroid/taobao/windvane/security/SSLTunnelSocketFactory;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object v7, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    const-string v9, "https:proxy: none"

    invoke-static {v7, v9}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v11

    .line 13
    :goto_0
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v14, :cond_2

    .line 14
    invoke-virtual {v7, v14}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 15
    :cond_2
    new-instance v9, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-virtual {v7, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v9, "Connection"

    const-string v12, "Keep-Alive"

    .line 16
    invoke-virtual {v7, v9, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v5, v3

    move-object/from16 v16, v5

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v2, v11

    move-object v7, v2

    move-object/from16 v16, v7

    goto/16 :goto_1b

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v2, v11

    move-object v7, v2

    move-object/from16 v16, v7

    goto/16 :goto_21

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v5, v3

    move-object/from16 v16, v5

    goto/16 :goto_28

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v5, v3

    move-object/from16 v16, v5

    goto/16 :goto_2a

    .line 17
    :cond_3
    :try_start_3
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_3 .. :try_end_3} :catch_2e
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_3 .. :try_end_3} :catch_2d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_28
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_23
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 18
    :goto_1
    :try_start_4
    invoke-direct {v1, v7, v2}, Landroid/taobao/windvane/connect/HttpConnector;->setConnectProp(Ljava/net/HttpURLConnection;Landroid/taobao/windvane/connect/HttpRequest;)V

    .line 19
    iget-object v9, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;
    :try_end_4
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_4 .. :try_end_4} :catch_22
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_4 .. :try_end_4} :catch_21
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1f
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v9, :cond_4

    .line 20
    :try_start_5
    invoke-virtual {v9, v10}, Landroid/taobao/windvane/connect/HttpConnectListener;->onProcess(I)V
    :try_end_5
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v5, v3

    move-object/from16 v16, v5

    :goto_2
    move-object v11, v7

    goto/16 :goto_19

    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v2, v11

    move-object/from16 v16, v2

    goto/16 :goto_1b

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v2, v11

    move-object/from16 v16, v2

    goto/16 :goto_21

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v5, v3

    move-object/from16 v16, v5

    :goto_3
    move-object v11, v7

    goto/16 :goto_28

    :catch_7
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v5, v3

    move-object/from16 v16, v5

    :goto_4
    move-object v11, v7

    goto/16 :goto_2a

    :cond_4
    :goto_5
    :try_start_6
    const-string/jumbo v9, "post"

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v12, 0x1

    if-eqz v9, :cond_5

    .line 22
    sget-object v9, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "post data: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->getPostData()[B

    move-result-object v11

    invoke-direct {v15, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 24
    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v9, "POST"

    .line 25
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 27
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->getPostData()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/OutputStream;->write([B)V

    .line 29
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 30
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_6 .. :try_end_6} :catch_22
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_6 .. :try_end_6} :catch_21
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1f
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    .line 31
    :cond_5
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_7
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_1e
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_7 .. :try_end_7} :catch_22
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_7 .. :try_end_7} :catch_21
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1f
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 32
    :goto_6
    :try_start_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 33
    sget-object v11, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "responeCode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x12c

    if-lt v9, v11, :cond_9

    const/16 v14, 0x190

    if-ge v9, v14, :cond_9

    const/16 v14, 0x130

    if-eq v9, v14, :cond_9

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->isRedirect()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 35
    iget v14, v1, Landroid/taobao/windvane/connect/HttpConnector;->redirectTime:I

    const/4 v15, 0x5

    if-gt v14, v15, :cond_8

    add-int/2addr v14, v12

    .line 36
    iput v14, v1, Landroid/taobao/windvane/connect/HttpConnector;->redirectTime:I

    const-string v14, "location"

    .line 37
    invoke-virtual {v7, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 38
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 39
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3, v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_6
    const/16 v3, 0x131

    if-eq v9, v3, :cond_7

    .line 40
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/connect/HttpRequest;->setUri(Landroid/net/Uri;)V

    .line 41
    invoke-direct/range {p0 .. p1}, Landroid/taobao/windvane/connect/HttpConnector;->dataConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object v2
    :try_end_8
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_8 .. :try_end_8} :catch_22
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_8 .. :try_end_8} :catch_21
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1f
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 42
    :try_start_9
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v3, v0

    .line 43
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :goto_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    .line 45
    :cond_7
    :try_start_a
    new-instance v2, Landroid/taobao/windvane/connect/HttpRequest;

    invoke-direct {v2, v14}, Landroid/taobao/windvane/connect/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/taobao/windvane/connect/HttpConnector;->dataConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object v2
    :try_end_a
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_a .. :try_end_a} :catch_22
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_a .. :try_end_a} :catch_21
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_a} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1f
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 46
    :try_start_b
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 47
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :goto_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    .line 49
    :cond_8
    :try_start_c
    new-instance v2, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;

    invoke-direct {v2, v1, v4}, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_9
    invoke-virtual {v6, v9}, Landroid/taobao/windvane/connect/HttpResponse;->setHttpCode(I)V

    .line 51
    :cond_a
    :goto_9
    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    const/16 v2, 0xc8

    if-lt v9, v2, :cond_10

    if-ge v9, v11, :cond_10

    .line 52
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    const/high16 v3, 0x500000

    if-gt v2, v3, :cond_f

    .line 53
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_c
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_c .. :try_end_c} :catch_22
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_c .. :try_end_c} :catch_21
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_c .. :try_end_c} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_1f
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 54
    :try_start_d
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v9, "gzip"

    .line 55
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 56
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_d .. :try_end_d} :catch_15
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_12
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 57
    :try_start_e
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_e .. :try_end_e} :catch_d
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object v11, v5

    move-object v5, v9

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v5

    move-object v11, v7

    const/4 v5, 0x0

    goto/16 :goto_19

    :catch_a
    move-exception v0

    move-object/from16 v16, v3

    move-object v2, v5

    goto/16 :goto_c

    :catch_b
    move-exception v0

    move-object/from16 v16, v3

    move-object v2, v5

    goto/16 :goto_d

    :catch_c
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v5

    move-object v11, v7

    const/4 v5, 0x0

    goto/16 :goto_28

    :catch_d
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v5

    move-object v11, v7

    const/4 v5, 0x0

    goto/16 :goto_2a

    .line 58
    :cond_b
    :try_start_f
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_f .. :try_end_f} :catch_15
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_f .. :try_end_f} :catch_14
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_12
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v11, 0x0

    :goto_a
    const/16 v9, 0x800

    :try_start_10
    new-array v12, v9, [B

    const/4 v13, 0x0

    .line 59
    :cond_c
    :goto_b
    invoke-virtual {v5, v12, v10, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_e

    .line 60
    invoke-virtual {v8, v12, v10, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 61
    iget-object v15, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v15, :cond_c

    add-int/2addr v13, v14

    if-le v13, v2, :cond_d

    move v2, v13

    :cond_d
    int-to-float v14, v13

    int-to-float v9, v2

    div-float/2addr v14, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v14, v14, v9

    float-to-int v9, v14

    .line 62
    invoke-virtual {v15, v9}, Landroid/taobao/windvane/connect/HttpConnectListener;->onProcess(I)V

    const/16 v9, 0x800

    goto :goto_b

    .line 63
    :cond_e
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/taobao/windvane/connect/HttpResponse;->setData([B)V
    :try_end_10
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object/from16 v16, v3

    move-object v2, v11

    move-object v11, v5

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v11

    goto/16 :goto_2

    :catch_e
    move-exception v0

    move-object/from16 v16, v3

    move-object v2, v11

    move-object v3, v0

    move-object v11, v5

    goto/16 :goto_1b

    :catch_f
    move-exception v0

    move-object/from16 v16, v3

    move-object v2, v11

    move-object v3, v0

    move-object v11, v5

    goto/16 :goto_21

    :catch_10
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v11

    goto/16 :goto_3

    :catch_11
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v11

    goto/16 :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    goto/16 :goto_15

    :catch_12
    move-exception v0

    move-object/from16 v16, v3

    const/4 v2, 0x0

    :goto_c
    const/4 v11, 0x0

    goto :goto_13

    :catch_13
    move-exception v0

    move-object/from16 v16, v3

    const/4 v2, 0x0

    :goto_d
    const/4 v11, 0x0

    goto :goto_14

    :catch_14
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    goto/16 :goto_16

    :catch_15
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    goto/16 :goto_17

    .line 64
    :cond_f
    :try_start_11
    new-instance v3, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Content-Length is too large:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v3
    :try_end_11
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_11 .. :try_end_11} :catch_22
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_11 .. :try_end_11} :catch_21
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_11 .. :try_end_11} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_1f
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_10
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 65
    :goto_e
    :try_start_12
    iget-object v3, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v3, :cond_11

    .line 66
    invoke-virtual {v3, v6, v10}, Landroid/taobao/windvane/connect/HttpConnectListener;->onFinish(Ljava/lang/Object;I)V
    :try_end_12
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_12 .. :try_end_12} :catch_1d
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_1a
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_11
    if-eqz v11, :cond_12

    .line 67
    :try_start_13
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_16

    goto :goto_f

    :catch_16
    move-exception v0

    move-object v3, v0

    .line 68
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_f
    if-eqz v16, :cond_13

    .line 69
    :try_start_14
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_17

    goto :goto_10

    :catch_17
    move-exception v0

    move-object v3, v0

    .line 70
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_10
    if-eqz v2, :cond_14

    .line 71
    :try_start_15
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_18

    goto :goto_11

    :catch_18
    move-exception v0

    move-object v2, v0

    .line 72
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    :cond_14
    :goto_11
    :try_start_16
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_19

    goto :goto_12

    :catch_19
    move-exception v0

    move-object v2, v0

    .line 74
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :goto_12
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v6

    :catchall_5
    move-exception v0

    move-object v5, v11

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object v11, v7

    move-object v2, v0

    goto :goto_19

    :catch_1a
    move-exception v0

    :goto_13
    move-object v3, v0

    goto/16 :goto_1b

    :catch_1b
    move-exception v0

    :goto_14
    move-object v3, v0

    goto/16 :goto_21

    :catch_1c
    move-exception v0

    move-object v5, v11

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object v11, v7

    move-object v2, v0

    goto/16 :goto_28

    :catch_1d
    move-exception v0

    move-object v5, v11

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object v11, v7

    move-object v2, v0

    goto/16 :goto_2a

    :cond_15
    add-int/lit8 v12, v12, 0x1

    .line 76
    :try_start_17
    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v6, v2, v3}, Landroid/taobao/windvane/connect/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Set-Cookie"

    .line 78
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 79
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/taobao/windvane/WVCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_1e
    move-exception v0

    move-object v2, v0

    .line 80
    new-instance v3, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;

    invoke-virtual {v2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v3
    :try_end_17
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_17 .. :try_end_17} :catch_22
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_17 .. :try_end_17} :catch_21
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_17 .. :try_end_17} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_1f
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    const/4 v3, 0x0

    :goto_15
    const/4 v5, 0x0

    goto :goto_18

    :catch_1f
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto :goto_1a

    :catch_20
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto/16 :goto_20

    :catch_21
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    const/4 v3, 0x0

    :goto_16
    const/4 v5, 0x0

    goto/16 :goto_27

    :catch_22
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    const/4 v3, 0x0

    :goto_17
    const/4 v5, 0x0

    goto/16 :goto_29

    :catchall_7
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_18
    const/16 v16, 0x0

    .line 81
    :goto_19
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 82
    iget-object v6, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v6, :cond_16

    const/4 v7, -0x4

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "network exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 84
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 86
    new-instance v2, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;

    invoke-direct {v2, v1, v4}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    :catch_23
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_1a
    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 87
    :goto_1b
    :try_start_19
    iget-object v4, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v4, :cond_17

    const/4 v5, -0x5

    const-string/jumbo v6, "out of memory error"

    .line 88
    invoke-virtual {v4, v5, v6}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 89
    :cond_17
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 90
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-eqz v11, :cond_18

    .line 91
    :try_start_1a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_24

    goto :goto_1c

    :catch_24
    move-exception v0

    move-object v3, v0

    .line 92
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_1c
    if-eqz v16, :cond_19

    .line 93
    :try_start_1b
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_25

    goto :goto_1d

    :catch_25
    move-exception v0

    move-object v3, v0

    .line 94
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_1d
    if-eqz v2, :cond_1a

    .line 95
    :try_start_1c
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_26

    goto :goto_1e

    :catch_26
    move-exception v0

    move-object v2, v0

    .line 96
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :cond_1a
    :goto_1e
    :try_start_1d
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_27

    goto :goto_1f

    :catch_27
    move-exception v0

    move-object v2, v0

    .line 98
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f
    if-eqz v7, :cond_1f

    goto :goto_26

    :catch_28
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_20
    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 99
    :goto_21
    :try_start_1e
    iget-object v4, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v4, :cond_1b

    const/4 v5, -0x3

    const-string/jumbo v6, "ssl handshake exception"

    .line 100
    invoke-virtual {v4, v5, v6}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 101
    :cond_1b
    invoke-virtual {v3}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    if-nez v3, :cond_21

    if-eqz v11, :cond_1c

    .line 102
    :try_start_1f
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_29

    goto :goto_22

    :catch_29
    move-exception v0

    move-object v3, v0

    .line 103
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_22
    if-eqz v16, :cond_1d

    .line 104
    :try_start_20
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2a

    goto :goto_23

    :catch_2a
    move-exception v0

    move-object v3, v0

    .line 105
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d
    :goto_23
    if-eqz v2, :cond_1e

    .line 106
    :try_start_21
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2b

    goto :goto_24

    :catch_2b
    move-exception v0

    move-object v2, v0

    .line 107
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :cond_1e
    :goto_24
    :try_start_22
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2c

    goto :goto_25

    :catch_2c
    move-exception v0

    move-object v2, v0

    .line 109
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    if-eqz v7, :cond_1f

    .line 110
    :goto_26
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 111
    :cond_1f
    iget-object v2, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v2, :cond_20

    .line 112
    new-instance v3, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {v3}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    invoke-virtual {v2, v3, v10}, Landroid/taobao/windvane/connect/HttpConnectListener;->onFinish(Ljava/lang/Object;I)V

    .line 113
    :cond_20
    new-instance v2, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {v2}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    return-object v2

    .line 114
    :cond_21
    :try_start_23
    throw v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    :catchall_8
    move-exception v0

    move-object v3, v0

    .line 115
    :try_start_24
    new-instance v4, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    :catchall_9
    move-exception v0

    move-object v5, v11

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object v11, v7

    goto :goto_2b

    :catch_2d
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_27
    const/16 v16, 0x0

    .line 116
    :goto_28
    :try_start_25
    iget-object v4, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v4, :cond_22

    const/4 v6, -0x2

    const-string v7, "connect file is too large"

    .line 117
    invoke-virtual {v4, v6, v7}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 118
    :cond_22
    throw v2

    :catch_2e
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_29
    const/16 v16, 0x0

    .line 119
    :goto_2a
    iget-object v6, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v6, :cond_23

    const/4 v7, -0x1

    .line 120
    invoke-virtual {v6, v7, v4}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 121
    :cond_23
    throw v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    :catchall_a
    move-exception v0

    :goto_2b
    move-object v2, v0

    if-eqz v5, :cond_24

    .line 122
    :try_start_26
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_2f

    goto :goto_2c

    :catch_2f
    move-exception v0

    move-object v4, v0

    .line 123
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_2c
    if-eqz v3, :cond_25

    .line 124
    :try_start_27
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_30

    goto :goto_2d

    :catch_30
    move-exception v0

    move-object v3, v0

    .line 125
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    :goto_2d
    if-eqz v16, :cond_26

    .line 126
    :try_start_28
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_31

    goto :goto_2e

    :catch_31
    move-exception v0

    move-object v3, v0

    .line 127
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :cond_26
    :goto_2e
    :try_start_29
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_32

    goto :goto_2f

    :catch_32
    move-exception v0

    move-object v3, v0

    .line 129
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    if-eqz v11, :cond_27

    .line 130
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 131
    :cond_27
    throw v2
.end method

.method private setConnectProp(Ljava/net/HttpURLConnection;Landroid/taobao/windvane/connect/HttpRequest;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getRetryTime()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getConnectTimeout()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    mul-int v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getReadTimeout()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 5
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "close"

    .line 6
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 7
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/windvane/WVCookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Cookie"

    .line 9
    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method


# virtual methods
.method public syncConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/connect/HttpConnector;->syncConnect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncConnect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/connect/HttpRequest;",
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/connect/HttpResponse;",
            ">;)",
            "Landroid/taobao/windvane/connect/HttpResponse;"
        }
    .end annotation

    const-string v0, "Http connect error, request is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-object p2, p0, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Landroid/taobao/windvane/connect/HttpConnector;->redirectTime:I

    .line 7
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpRequest;->getRetryTime()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/connect/HttpConnector;->dataConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 v2, p2, 0x2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 17
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 18
    :catch_4
    sget-object v2, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    const-string v3, "HttpConnector retry Sleep has been interrupted, go ahead"

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    :goto_1
    new-instance p1, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {p1}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    .line 20
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/connect/HttpResponse;->setErrorMsg(Ljava/lang/String;)V

    return-object p1
.end method

.method public syncConnect(Ljava/lang/String;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 1

    .line 1
    new-instance v0, Landroid/taobao/windvane/connect/HttpRequest;

    invoke-direct {v0, p1}, Landroid/taobao/windvane/connect/HttpRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/taobao/windvane/connect/HttpConnector;->syncConnect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object p1

    return-object p1
.end method
