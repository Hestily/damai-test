.class public interface abstract annotation Landroidx/compose/ui/tooling/preview/Preview;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/compose/ui/tooling/preview/Preview;
        apiLevel = -0x1
        backgroundColor = 0x0L
        device = ""
        fontScale = 1.0f
        group = ""
        heightDp = -0x1
        locale = ""
        name = ""
        showBackground = false
        showSystemUi = false
        uiMode = 0x0
        widthDp = -0x1
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/tooling/preview/Preview$Container;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Landroidx/compose/ui/tooling/preview/Preview$Container;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/annotation/MustBeDocumented;
.end annotation

.annotation runtime Lkotlin/annotation/Repeatable;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->BINARY:Lkotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->ANNOTATION_CLASS:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract apiLevel()I
.end method

.method public abstract backgroundColor()J
.end method

.method public abstract device()Ljava/lang/String;
.end method

.method public abstract fontScale()F
.end method

.method public abstract group()Ljava/lang/String;
.end method

.method public abstract heightDp()I
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract showBackground()Z
.end method

.method public abstract showSystemUi()Z
.end method

.method public abstract uiMode()I
.end method

.method public abstract widthDp()I
.end method
