.class public interface abstract Lokhttp3/CookieJar;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final NO_COOKIES:Lokhttp3/CookieJar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/CookieJar$a;

    invoke-direct {v0}, Lokhttp3/CookieJar$a;-><init>()V

    sput-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    return-void
.end method


# virtual methods
.method public abstract loadForRequest(Lokhttp3/l;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/l;",
            ")",
            "Ljava/util/List<",
            "Ltb/t80;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveFromResponse(Lokhttp3/l;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/l;",
            "Ljava/util/List<",
            "Ltb/t80;",
            ">;)V"
        }
    .end annotation
.end method
