.class Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/config/WVUrlMatchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TireNode"
.end annotation


# instance fields
.field private group:Ljava/lang/String;

.field public nodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private scheme:Ljava/lang/String;

.field private subField:Ljava/lang/String;

.field final synthetic this$0:Landroid/taobao/windvane/config/WVUrlMatchUtils;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/config/WVUrlMatchUtils;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->this$0:Landroid/taobao/windvane/config/WVUrlMatchUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->subField:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->group:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->scheme:Ljava/lang/String;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->port:I

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->subField:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->group:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->port:I

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->group:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->port:I

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$TireNode;->scheme:Ljava/lang/String;

    return-void
.end method
