.class public interface abstract annotation Landroidx/compose/runtime/internal/LiveLiteralInfo;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->RUNTIME:Lkotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract key()Ljava/lang/String;
.end method

.method public abstract offset()I
.end method
