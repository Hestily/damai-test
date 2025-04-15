.class public interface abstract Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IVivoSpatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSpatializerStateChangedListener"
.end annotation


# virtual methods
.method public abstract onSpatializerAvailableChanged(Landroid/media/IVivoSpatializer;Z)V
    .param p1    # Landroid/media/IVivoSpatializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSpatializerEnabledChanged(Landroid/media/IVivoSpatializer;Z)V
    .param p1    # Landroid/media/IVivoSpatializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
