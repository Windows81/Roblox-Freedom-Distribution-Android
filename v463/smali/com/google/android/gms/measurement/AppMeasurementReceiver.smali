.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroidx/legacy/a/a;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ev;


# instance fields
.field private a:Lcom/google/android/gms/internal/measurement/es;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/legacy/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a_(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lcom/google/android/gms/internal/measurement/es;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/es;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/es;-><init>(Lcom/google/android/gms/internal/measurement/ev;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lcom/google/android/gms/internal/measurement/es;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lcom/google/android/gms/internal/measurement/es;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/es;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
