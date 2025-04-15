.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;
.implements Lokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$b;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/f;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lokhttp3/Authenticator;

.field final cache:Ltb/zo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final callTimeout:I

.field final certificateChainCleaner:Lokhttp3/internal/tls/b;

.field final certificatePinner:Lokhttp3/c;

.field final connectTimeout:I

.field final connectionPool:Lokhttp3/e;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/f;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lokhttp3/CookieJar;

.field final dispatcher:Lokhttp3/g;

.field final dns:Lokhttp3/Dns;

.field final eventListenerFactory:Lokhttp3/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Lokhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp3/Protocol;

    .line 1
    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lokhttp3/internal/a;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    new-array v0, v0, [Lokhttp3/f;

    .line 2
    sget-object v1, Lokhttp3/f;->MODERN_TLS:Lokhttp3/f;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/f;->CLEARTEXT:Lokhttp3/f;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/a;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 3
    new-instance v0, Lokhttp3/OkHttpClient$a;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$a;-><init>()V

    sput-object v0, Ltb/ba2;->a:Ltb/ba2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$b;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$b;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$b;)V

    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient$b;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->a:Lokhttp3/g;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/g;

    .line 4
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 7
    iget-object v1, p1, Lokhttp3/OkHttpClient$b;->e:Ljava/util/List;

    invoke-static {v1}, Lokhttp3/internal/a;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 8
    iget-object v1, p1, Lokhttp3/OkHttpClient$b;->f:Ljava/util/List;

    invoke-static {v1}, Lokhttp3/internal/a;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 9
    iget-object v1, p1, Lokhttp3/OkHttpClient$b;->g:Lokhttp3/EventListener$Factory;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 10
    iget-object v1, p1, Lokhttp3/OkHttpClient$b;->h:Ljava/net/ProxySelector;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 11
    iget-object v1, p1, Lokhttp3/OkHttpClient$b;->i:Lokhttp3/CookieJar;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    .line 12
    iget-object v1, p1, Lokhttp3/OkHttpClient$b;->j:Lokhttp3/internal/cache/InternalCache;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 13
    iget-object v1, p1, Lokhttp3/OkHttpClient$b;->k:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/f;

    if-nez v2, :cond_1

    .line 15
    invoke-virtual {v3}, Lokhttp3/f;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {}, Lokhttp3/internal/a;->D()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lokhttp3/OkHttpClient;->newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 19
    invoke-static {v0}, Lokhttp3/internal/tls/b;->b(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/b;

    goto :goto_2

    .line 20
    :cond_4
    :goto_1
    iput-object v0, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 21
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->m:Lokhttp3/internal/tls/b;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/b;

    .line 22
    :goto_2
    iget-object v0, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 23
    invoke-static {}, Ltb/hv3;->j()Ltb/hv3;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ltb/hv3;->f(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 24
    :cond_5
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 25
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->o:Lokhttp3/c;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/b;

    invoke-virtual {v0, v1}, Lokhttp3/c;->f(Lokhttp3/internal/tls/b;)Lokhttp3/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/c;

    .line 26
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->p:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 27
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->q:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    .line 28
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->r:Lokhttp3/e;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/e;

    .line 29
    iget-object v0, p1, Lokhttp3/OkHttpClient$b;->s:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    .line 30
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$b;->t:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 31
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$b;->u:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    .line 32
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$b;->v:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 33
    iget v0, p1, Lokhttp3/OkHttpClient$b;->w:I

    iput v0, p0, Lokhttp3/OkHttpClient;->callTimeout:I

    .line 34
    iget v0, p1, Lokhttp3/OkHttpClient$b;->x:I

    iput v0, p0, Lokhttp3/OkHttpClient;->connectTimeout:I

    .line 35
    iget v0, p1, Lokhttp3/OkHttpClient$b;->y:I

    iput v0, p0, Lokhttp3/OkHttpClient;->readTimeout:I

    .line 36
    iget v0, p1, Lokhttp3/OkHttpClient$b;->z:I

    iput v0, p0, Lokhttp3/OkHttpClient;->writeTimeout:I

    .line 37
    iget p1, p1, Lokhttp3/OkHttpClient$b;->A:I

    iput p1, p0, Lokhttp3/OkHttpClient;->pingInterval:I

    .line 38
    iget-object p1, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 39
    iget-object p1, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 40
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ltb/hv3;->j()Ltb/hv3;

    move-result-object v0

    invoke-virtual {v0}, Ltb/hv3;->k()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No System TLS"

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public authenticator()Lokhttp3/Authenticator;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Ltb/zo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->cache:Ltb/zo;

    return-object v0
.end method

.method public callTimeoutMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->callTimeout:I

    return v0
.end method

.method public certificatePinner()Lokhttp3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/c;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lokhttp3/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/e;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lokhttp3/CookieJar;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lokhttp3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/g;

    return-object v0
.end method

.method public dns()Lokhttp3/Dns;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    return-object v0
.end method

.method public eventListenerFactory()Lokhttp3/EventListener$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lokhttp3/internal/cache/InternalCache;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lokhttp3/OkHttpClient$b;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$b;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient$b;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lokhttp3/n;)Lokhttp3/Call;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lokhttp3/RealCall;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/n;Z)Lokhttp3/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public newWebSocket(Lokhttp3/n;Ltb/o96;)Lokhttp3/WebSocket;
    .locals 7

    .line 1
    new-instance v6, Lokhttp3/internal/ws/RealWebSocket;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v0, p0, Lokhttp3/OkHttpClient;->pingInterval:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/n;Ltb/o96;Ljava/util/Random;J)V

    .line 2
    invoke-virtual {v6, p0}, Lokhttp3/internal/ws/RealWebSocket;->d(Lokhttp3/OkHttpClient;)V

    return-object v6
.end method

.method public pingIntervalMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method
