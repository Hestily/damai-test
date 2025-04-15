.class public final enum Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/config/WVConfigUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONFIG_UPDATE_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum NETWORK_NOT_SUPPORT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum NOT_AVAIABLE:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum UPDATE_CANCELED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum UPDATE_COUNT_LIMIT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum UPDATE_DISABLED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 2
    new-instance v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v3, "UPDATE_DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_DISABLED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 3
    new-instance v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v5, "UPDATE_CANCELED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_CANCELED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 4
    new-instance v5, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v7, "NULL_DATA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 5
    new-instance v7, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v9, "ENCODING_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 6
    new-instance v9, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v11, "NOT_AVAIABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NOT_AVAIABLE:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 7
    new-instance v11, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v13, "NO_VERSION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 8
    new-instance v13, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v15, "UNKNOWN_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 9
    new-instance v15, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v14, "UPDATE_COUNT_LIMIT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_COUNT_LIMIT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 10
    new-instance v14, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const-string v12, "NETWORK_NOT_SUPPORT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NETWORK_NOT_SUPPORT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/16 v12, 0xa

    new-array v12, v12, [Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->$VALUES:[Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->$VALUES:[Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {v0}, [Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    return-object v0
.end method
