.class public final synthetic Landroidx/activity/compose/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/a;->a:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/a;->a:Landroidx/compose/runtime/State;

    invoke-static {v0, p1}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->a(Landroidx/compose/runtime/State;Ljava/lang/Object;)V

    return-void
.end method
