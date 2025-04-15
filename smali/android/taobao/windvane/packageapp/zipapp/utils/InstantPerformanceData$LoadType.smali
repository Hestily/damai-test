.class public final enum Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_BAD_RESOURCE:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_ERROR_VALIDITY:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_FOR_FILE_NOT_FOUND:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_LOCAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

.field public static final enum LOAD_OTHER_ERROR:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const-string v1, "LOAD_OTHER_ERROR"

    const/4 v2, 0x0

    const-string v3, "-2"

    const-string v4, "OTHER_ERROR"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_OTHER_ERROR:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 2
    new-instance v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const-string v3, "LOAD_FOR_FILE_NOT_FOUND"

    const/4 v4, 0x1

    const-string v5, "-1"

    invoke-direct {v1, v3, v4, v5, v3}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_FOR_FILE_NOT_FOUND:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 3
    new-instance v3, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const-string v5, "LOAD_NORMAL"

    const/4 v6, 0x2

    const-string v7, "0"

    const-string v8, "ZCache-D"

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 4
    new-instance v5, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const-string v7, "LOAD_LOCAL"

    const/4 v8, 0x3

    const-string v9, "1"

    const-string v10, "ZCache"

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_LOCAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 5
    new-instance v7, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const-string v9, "LOAD_ERROR_VALIDITY"

    const/4 v10, 0x4

    const-string v11, "2"

    invoke-direct {v7, v9, v10, v11, v9}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_ERROR_VALIDITY:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    .line 6
    new-instance v9, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const-string v11, "LOAD_BAD_RESOURCE"

    const/4 v12, 0x5

    const-string v13, "3"

    invoke-direct {v9, v11, v12, v13, v11}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_BAD_RESOURCE:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->code:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    invoke-virtual {v0}, [Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->msg:Ljava/lang/String;

    return-object v0
.end method
