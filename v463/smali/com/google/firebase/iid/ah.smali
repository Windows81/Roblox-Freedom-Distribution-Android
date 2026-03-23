.class public final Lcom/google/firebase/iid/ah;
.super Landroid/os/Binder;


# instance fields
.field private final a:Lcom/google/firebase/iid/ad;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/ad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/ah;->a:Lcom/google/firebase/iid/ad;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/iid/ah;)Lcom/google/firebase/iid/ad;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/firebase/iid/ah;->a:Lcom/google/firebase/iid/ad;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/firebase/iid/af;)V
    .locals 4

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_3

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "service received new intent via bind strategy"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/iid/ah;->a:Lcom/google/firebase/iid/ad;

    iget-object v3, p1, Lcom/google/firebase/iid/af;->a:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/google/firebase/iid/ad;->zzc(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/iid/af;->a()V

    return-void

    .line 10
    :cond_1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "intent being queued for bg execution"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/iid/ah;->a:Lcom/google/firebase/iid/ad;

    iget-object v0, v0, Lcom/google/firebase/iid/ad;->zzh:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/iid/ai;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/ai;-><init>(Lcom/google/firebase/iid/ah;Lcom/google/firebase/iid/af;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
