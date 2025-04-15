.class public final enum Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

.field public static final enum ZIP_APP_TYPE_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

.field public static final enum ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    const-string v1, "ZIP_UPDATE_INFO_DELETE"

    const/4 v2, 0x0

    const-wide/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    new-instance v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    const-string v3, "ZIP_APP_TYPE_NORMAL"

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_APP_TYPE_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-wide p3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->value:J

    return-void
.end method
