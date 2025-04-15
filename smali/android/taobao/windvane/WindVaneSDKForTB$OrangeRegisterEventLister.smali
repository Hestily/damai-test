.class public Landroid/taobao/windvane/WindVaneSDKForTB$OrangeRegisterEventLister;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/WindVaneSDKForTB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrangeRegisterEventLister"
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/WindVaneSDKForTB$OrangeRegisterEventLister;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 0

    .line 1
    new-instance p2, Landroid/taobao/windvane/service/WVEventResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    const/16 p3, 0x1b59

    if-ne p1, p3, :cond_0

    const-string p1, "WVConfigManager"

    const-string/jumbo p3, "receive orange register"

    .line 2
    invoke-static {p1, p3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/taobao/windvane/extra/config/TBConfigManager;->getInstance()Landroid/taobao/windvane/extra/config/TBConfigManager;

    move-result-object p1

    iget-object p3, p0, Landroid/taobao/windvane/WindVaneSDKForTB$OrangeRegisterEventLister;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/taobao/windvane/extra/config/TBConfigManager;->init(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/taobao/windvane/service/WVEventService;->removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    :cond_0
    return-object p2
.end method
