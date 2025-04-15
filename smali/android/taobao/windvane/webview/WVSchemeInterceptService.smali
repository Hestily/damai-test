.class public Landroid/taobao/windvane/webview/WVSchemeInterceptService;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static mIntercepter:Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWVSchemeIntercepter()Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->mIntercepter:Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    return-object v0
.end method

.method public static registerWVURLintercepter(Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;)V
    .locals 0

    .line 1
    sput-object p0, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->mIntercepter:Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    return-void
.end method
