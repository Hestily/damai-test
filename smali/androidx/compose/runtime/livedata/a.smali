.class public final synthetic Landroidx/compose/runtime/livedata/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/livedata/a;->a:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/livedata/a;->a:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, p1}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt$observeAsState$1;->a(Landroidx/compose/runtime/MutableState;Ljava/lang/Object;)V

    return-void
.end method
