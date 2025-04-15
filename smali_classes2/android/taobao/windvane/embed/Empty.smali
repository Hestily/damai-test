.class public Landroid/taobao/windvane/embed/Empty;
.super Landroid/taobao/windvane/embed/BaseEmbedView;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p1, -0x777778

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string p1, "Empty View"

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x10000

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method protected getViewType()Ljava/lang/String;
    .locals 1

    const-string v0, "empty"

    return-object v0
.end method
