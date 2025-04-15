.class public Landroid/taobao/windvane/util/WVContextUtil;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRealContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    :cond_1
    return-object p0
.end method
