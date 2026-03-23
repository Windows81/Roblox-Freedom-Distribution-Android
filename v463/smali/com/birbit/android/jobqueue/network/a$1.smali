.class Lcom/birbit/android/jobqueue/network/a$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/birbit/android/jobqueue/network/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/birbit/android/jobqueue/network/a;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/network/a;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/birbit/android/jobqueue/network/a$1;->a:Lcom/birbit/android/jobqueue/network/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 32
    iget-object p2, p0, Lcom/birbit/android/jobqueue/network/a$1;->a:Lcom/birbit/android/jobqueue/network/a;

    invoke-virtual {p2, p1}, Lcom/birbit/android/jobqueue/network/a;->a(Landroid/content/Context;)V

    return-void
.end method
