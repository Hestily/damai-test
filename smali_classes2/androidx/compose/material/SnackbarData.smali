.class public interface abstract Landroidx/compose/material/SnackbarData;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract getActionLabel()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDuration()Landroidx/compose/material/SnackbarDuration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract performAction()V
.end method
