.class Landroid/taobao/windvane/config/WVUCPrecacheManager$WVUCPrecacheManagerHolder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/config/WVUCPrecacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WVUCPrecacheManagerHolder"
.end annotation


# static fields
.field static final sInstance:Landroid/taobao/windvane/config/WVUCPrecacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/taobao/windvane/config/WVUCPrecacheManager;-><init>(Landroid/taobao/windvane/config/WVUCPrecacheManager$1;)V

    sput-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager$WVUCPrecacheManagerHolder;->sInstance:Landroid/taobao/windvane/config/WVUCPrecacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
