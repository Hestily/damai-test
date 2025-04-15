.class public final Landroidx/lifecycle/ViewKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final synthetic findViewTreeLifecycleOwner(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replaced by View.findViewTreeLifecycleOwner() from lifecycle module"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "findViewTreeLifecycleOwner()"
            imports = {
                "androidx.lifecycle.findViewTreeLifecycleOwner"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    return-object p0
.end method
