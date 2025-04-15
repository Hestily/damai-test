.class public final enum Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_MINI_APP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string v1, "ZIP_APP_TYPE_PACKAGEAPP"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string v3, "ZIP_APP_TYPE_ZCACHE"

    const/4 v4, 0x1

    const-wide/16 v5, 0x10

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string v5, "ZIP_APP_TYPE_REACT"

    const/4 v6, 0x2

    const-wide/16 v7, 0x20

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string v7, "ZIP_APP_TYPE_ZCACHE2"

    const/4 v8, 0x3

    const-wide/16 v9, 0x30

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v7, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string v9, "ZIP_APP_TYPE_MINI_APP"

    const/4 v10, 0x4

    const-wide/16 v11, 0x40

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_MINI_APP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v9, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string v11, "ZIP_APP_TYPE_UNKNOWN"

    const/4 v12, 0x5

    const-wide/16 v13, 0xf0

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

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
    iput-wide p3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->value:J

    return-void
.end method
