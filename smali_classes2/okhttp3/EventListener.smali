.class public abstract Lokhttp3/EventListener;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lokhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/EventListener$a;

    invoke-direct {v0}, Lokhttp3/EventListener$a;-><init>()V

    sput-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    invoke-static {p0, p1}, Lokhttp3/EventListener;->m(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p0

    return-object p0
.end method

.method static l(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;
    .locals 1

    .line 1
    new-instance v0, Ltb/wa1;

    invoke-direct {v0, p0}, Ltb/wa1;-><init>(Lokhttp3/EventListener;)V

    return-object v0
.end method

.method private static synthetic m(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public b(Lokhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public c(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public d(Lokhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public e(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0
    .param p4    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public f(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p4    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public g(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    return-void
.end method

.method public h(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public i(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public j(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public k(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public n(Lokhttp3/Call;J)V
    .locals 0

    return-void
.end method

.method public o(Lokhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public p(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public q(Lokhttp3/Call;Lokhttp3/n;)V
    .locals 0

    return-void
.end method

.method public r(Lokhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public s(Lokhttp3/Call;J)V
    .locals 0

    return-void
.end method

.method public t(Lokhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public u(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public v(Lokhttp3/Call;Lokhttp3/p;)V
    .locals 0

    return-void
.end method

.method public w(Lokhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public x(Lokhttp3/Call;Lokhttp3/j;)V
    .locals 0
    .param p2    # Lokhttp3/j;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public y(Lokhttp3/Call;)V
    .locals 0

    return-void
.end method
