.class public final synthetic Landroidx/core/location/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/location/LocationManager;

.field public final synthetic b:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/b;->a:Landroid/location/LocationManager;

    iput-object p2, p0, Landroidx/core/location/b;->b:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/core/location/b;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Landroidx/core/location/b;->b:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    invoke-static {v0, v1}, Landroidx/core/location/LocationManagerCompat;->b(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
