.class public interface abstract annotation Landroidx/compose/ui/InternalComposeUiApi;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation build Lkotlin/RequiresOptIn;
    message = "Unstable API for use only between compose-ui modules sharing the same exact version, subject to change without notice in major, minor, or patch releases."
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->BINARY:Lkotlin/annotation/AnnotationRetention;
.end annotation
