.class public final enum Landroid/taobao/windvane/config/EnvEnum;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/config/EnvEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/config/EnvEnum;

.field public static final enum DAILY:Landroid/taobao/windvane/config/EnvEnum;

.field public static final enum ONLINE:Landroid/taobao/windvane/config/EnvEnum;

.field public static final enum PRE:Landroid/taobao/windvane/config/EnvEnum;


# instance fields
.field private key:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroid/taobao/windvane/config/EnvEnum;

    const-string v1, "ONLINE"

    const/4 v2, 0x0

    const-string v3, "m"

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/taobao/windvane/config/EnvEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    new-instance v1, Landroid/taobao/windvane/config/EnvEnum;

    const-string v3, "PRE"

    const/4 v4, 0x1

    const-string/jumbo v5, "wapa"

    invoke-direct {v1, v3, v4, v4, v5}, Landroid/taobao/windvane/config/EnvEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Landroid/taobao/windvane/config/EnvEnum;->PRE:Landroid/taobao/windvane/config/EnvEnum;

    new-instance v3, Landroid/taobao/windvane/config/EnvEnum;

    const-string v5, "DAILY"

    const/4 v6, 0x2

    const-string/jumbo v7, "waptest"

    invoke-direct {v3, v5, v6, v6, v7}, Landroid/taobao/windvane/config/EnvEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Landroid/taobao/windvane/config/EnvEnum;->DAILY:Landroid/taobao/windvane/config/EnvEnum;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/taobao/windvane/config/EnvEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Landroid/taobao/windvane/config/EnvEnum;->$VALUES:[Landroid/taobao/windvane/config/EnvEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroid/taobao/windvane/config/EnvEnum;->key:I

    .line 3
    iput-object p4, p0, Landroid/taobao/windvane/config/EnvEnum;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/config/EnvEnum;
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/config/EnvEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/config/EnvEnum;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/config/EnvEnum;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->$VALUES:[Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/config/EnvEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/config/EnvEnum;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/config/EnvEnum;->key:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/EnvEnum;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/config/EnvEnum;->key:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/EnvEnum;->value:Ljava/lang/String;

    return-void
.end method
