.class final enum Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/performance2/WVPageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WVPageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateErrorOccurred:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateLoadURL:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateStartLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const-string v1, "WVPageStateError"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 2
    new-instance v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const-string v3, "WVPageStateInit"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 3
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const-string v5, "WVPageStateLoadURL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateLoadURL:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 4
    new-instance v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const-string v7, "WVPageStateStartLoad"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateStartLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 5
    new-instance v7, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const-string v9, "WVPageStateFinishLoad"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 6
    new-instance v9, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const-string v11, "WVPageStateErrorOccurred"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateErrorOccurred:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->$VALUES:[Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->state:I

    return-void
.end method

.method public static valueOf(I)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateErrorOccurred:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateStartLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateLoadURL:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 7
    :cond_5
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->$VALUES:[Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    invoke-virtual {v0}, [Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->state:I

    return v0
.end method
