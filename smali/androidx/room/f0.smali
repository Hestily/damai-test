.class public final synthetic Landroidx/room/f0;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/room/QueryInterceptorStatement;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/f0;->a:Landroidx/room/QueryInterceptorStatement;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/room/f0;->a:Landroidx/room/QueryInterceptorStatement;

    invoke-static {v0}, Landroidx/room/QueryInterceptorStatement;->b(Landroidx/room/QueryInterceptorStatement;)V

    return-void
.end method
