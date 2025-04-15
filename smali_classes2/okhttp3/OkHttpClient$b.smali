.class public final Lokhttp3/OkHttpClient$b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:I

.field a:Lokhttp3/g;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/f;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field g:Lokhttp3/EventListener$Factory;

.field h:Ljava/net/ProxySelector;

.field i:Lokhttp3/CookieJar;

.field j:Lokhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field m:Lokhttp3/internal/tls/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lokhttp3/c;

.field p:Lokhttp3/Authenticator;

.field q:Lokhttp3/Authenticator;

.field r:Lokhttp3/e;

.field s:Lokhttp3/Dns;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Lokhttp3/g;

    invoke-direct {v0}, Lokhttp3/g;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->a:Lokhttp3/g;

    .line 5
    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->c:Ljava/util/List;

    .line 6
    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->d:Ljava/util/List;

    .line 7
    sget-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    invoke-static {v0}, Lokhttp3/EventListener;->l(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->g:Lokhttp3/EventListener$Factory;

    .line 8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ltb/a43;

    invoke-direct {v0}, Ltb/a43;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->h:Ljava/net/ProxySelector;

    .line 10
    :cond_0
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->i:Lokhttp3/CookieJar;

    .line 11
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->k:Ljavax/net/SocketFactory;

    .line 12
    sget-object v0, Ltb/w43;->INSTANCE:Ltb/w43;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 13
    sget-object v0, Lokhttp3/c;->DEFAULT:Lokhttp3/c;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->o:Lokhttp3/c;

    .line 14
    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->p:Lokhttp3/Authenticator;

    .line 15
    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->q:Lokhttp3/Authenticator;

    .line 16
    new-instance v0, Lokhttp3/e;

    invoke-direct {v0}, Lokhttp3/e;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->r:Lokhttp3/e;

    .line 17
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->s:Lokhttp3/Dns;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$b;->t:Z

    .line 19
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$b;->u:Z

    .line 20
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$b;->v:Z

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lokhttp3/OkHttpClient$b;->w:I

    const/16 v1, 0x2710

    .line 22
    iput v1, p0, Lokhttp3/OkHttpClient$b;->x:I

    .line 23
    iput v1, p0, Lokhttp3/OkHttpClient$b;->y:I

    .line 24
    iput v1, p0, Lokhttp3/OkHttpClient$b;->z:I

    .line 25
    iput v0, p0, Lokhttp3/OkHttpClient$b;->A:I

    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->e:Ljava/util/List;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lokhttp3/OkHttpClient$b;->f:Ljava/util/List;

    .line 29
    iget-object v2, p1, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/g;

    iput-object v2, p0, Lokhttp3/OkHttpClient$b;->a:Lokhttp3/g;

    .line 30
    iget-object v2, p1, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v2, p0, Lokhttp3/OkHttpClient$b;->b:Ljava/net/Proxy;

    .line 31
    iget-object v2, p1, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v2, p0, Lokhttp3/OkHttpClient$b;->c:Ljava/util/List;

    .line 32
    iget-object v2, p1, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v2, p0, Lokhttp3/OkHttpClient$b;->d:Ljava/util/List;

    .line 33
    iget-object v2, p1, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object v0, p1, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p1, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->g:Lokhttp3/EventListener$Factory;

    .line 36
    iget-object v0, p1, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->h:Ljava/net/ProxySelector;

    .line 37
    iget-object v0, p1, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->i:Lokhttp3/CookieJar;

    .line 38
    iget-object v0, p1, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->j:Lokhttp3/internal/cache/InternalCache;

    .line 39
    iget-object v0, p1, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->k:Ljavax/net/SocketFactory;

    .line 40
    iget-object v0, p1, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 41
    iget-object v0, p1, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/b;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->m:Lokhttp3/internal/tls/b;

    .line 42
    iget-object v0, p1, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 43
    iget-object v0, p1, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/c;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->o:Lokhttp3/c;

    .line 44
    iget-object v0, p1, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->p:Lokhttp3/Authenticator;

    .line 45
    iget-object v0, p1, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->q:Lokhttp3/Authenticator;

    .line 46
    iget-object v0, p1, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/e;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->r:Lokhttp3/e;

    .line 47
    iget-object v0, p1, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$b;->s:Lokhttp3/Dns;

    .line 48
    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$b;->t:Z

    .line 49
    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$b;->u:Z

    .line 50
    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$b;->v:Z

    .line 51
    iget v0, p1, Lokhttp3/OkHttpClient;->callTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$b;->w:I

    .line 52
    iget v0, p1, Lokhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$b;->x:I

    .line 53
    iget v0, p1, Lokhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$b;->y:I

    .line 54
    iget v0, p1, Lokhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$b;->z:I

    .line 55
    iget p1, p1, Lokhttp3/OkHttpClient;->pingInterval:I

    iput p1, p0, Lokhttp3/OkHttpClient$b;->A:I

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$b;)V

    return-object v0
.end method

.method public c(Ltb/zo;)Lokhttp3/OkHttpClient$b;
    .locals 0
    .param p1    # Ltb/zo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lokhttp3/OkHttpClient$b;->j:Lokhttp3/internal/cache/InternalCache;

    return-object p0
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/a;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/OkHttpClient$b;->x:I

    return-object p0
.end method

.method public e(Ljava/util/List;)Lokhttp3/OkHttpClient$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/f;",
            ">;)",
            "Lokhttp3/OkHttpClient$b;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lokhttp3/internal/a;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/OkHttpClient$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public f(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$b;
    .locals 1

    const-string v0, "dns == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lokhttp3/OkHttpClient$b;->s:Lokhttp3/Dns;

    return-object p0
.end method

.method public g(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$b;
    .locals 1

    const-string v0, "eventListener == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lokhttp3/EventListener;->l(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/OkHttpClient$b;->g:Lokhttp3/EventListener$Factory;

    return-object p0
.end method

.method public h(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$b;
    .locals 1

    const-string v0, "hostnameVerifier == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lokhttp3/OkHttpClient$b;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public i(Ljava/util/List;)Lokhttp3/OkHttpClient$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lokhttp3/OkHttpClient$b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object p1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_1
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 9
    sget-object p1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/OkHttpClient$b;->c:Ljava/util/List;

    return-object p0

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/a;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/OkHttpClient$b;->y:I

    return-object p0
.end method

.method public k(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$b;
    .locals 1

    const-string v0, "sslSocketFactory == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "trustManager == null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lokhttp3/OkHttpClient$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 4
    invoke-static {p2}, Lokhttp3/internal/tls/b;->b(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/b;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/OkHttpClient$b;->m:Lokhttp3/internal/tls/b;

    return-object p0
.end method

.method public l(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/a;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/OkHttpClient$b;->z:I

    return-object p0
.end method
