.class public Landroidx/core/content/UriMatcherCompat;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/UriMatcher;Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/content/UriMatcherCompat;->lambda$asPredicate$0(Landroid/content/UriMatcher;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static asPredicate(Landroid/content/UriMatcher;)Landroidx/core/util/Predicate;
    .locals 1
    .param p0    # Landroid/content/UriMatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UriMatcher;",
            ")",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ltb/bv5;

    invoke-direct {v0, p0}, Ltb/bv5;-><init>(Landroid/content/UriMatcher;)V

    return-object v0
.end method

.method private static synthetic lambda$asPredicate$0(Landroid/content/UriMatcher;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
