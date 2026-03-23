.class Lcom/roblox/client/y/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/y/a;->a(Landroid/app/Activity;ILcom/roblox/client/g/c;Lcom/roblox/client/g/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/f/c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/g/a$a;

.field final synthetic b:I

.field final synthetic c:Lcom/roblox/client/y/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/y/a;Lcom/roblox/client/g/a$a;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/roblox/client/y/a$1;->c:Lcom/roblox/client/y/a;

    iput-object p2, p0, Lcom/roblox/client/y/a$1;->a:Lcom/roblox/client/g/a$a;

    iput p3, p0, Lcom/roblox/client/y/a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/f/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/f/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/f/g;->e()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartLockManager"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/f/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SAVE: OK"

    .line 62
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/roblox/client/y/a$1;->c:Lcom/roblox/client/y/a;

    invoke-static {p1}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object p1

    const-string v0, "credentialSavedNoDialog"

    invoke-virtual {p1, v0}, Lcom/roblox/client/g/b;->b(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/roblox/client/y/a$1;->a:Lcom/roblox/client/g/a$a;

    invoke-interface {p1}, Lcom/roblox/client/g/a$a;->a()V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/f/g;->e()Ljava/lang/Exception;

    move-result-object p1

    .line 69
    instance-of v0, p1, Lcom/google/android/gms/common/api/j;

    const-string v2, "dialogNotShown"

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/roblox/client/y/a$1;->c:Lcom/roblox/client/y/a;

    iget-object v0, v0, Lcom/roblox/client/y/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    check-cast p1, Lcom/google/android/gms/common/api/j;

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/y/a$1;->c:Lcom/roblox/client/y/a;

    iget-object v0, v0, Lcom/roblox/client/y/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v3, p0, Lcom/roblox/client/y/a$1;->b:I

    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/common/api/j;->a(Landroid/app/Activity;I)V

    .line 76
    iget-object p1, p0, Lcom/roblox/client/y/a$1;->a:Lcom/roblox/client/g/a$a;

    invoke-interface {p1}, Lcom/roblox/client/g/a$a;->c()V

    .line 77
    iget-object p1, p0, Lcom/roblox/client/y/a$1;->c:Lcom/roblox/client/y/a;

    invoke-static {p1}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object p1

    const-string v0, "dialogShown"

    invoke-virtual {p1, v0}, Lcom/roblox/client/g/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send resolution. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/roblox/client/y/a$1;->c:Lcom/roblox/client/y/a;

    invoke-static {v0}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/roblox/client/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/roblox/client/y/a$1;->a:Lcom/roblox/client/g/a$a;

    invoke-interface {p1}, Lcom/roblox/client/g/a$a;->b()V

    goto :goto_1

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/y/a$1;->c:Lcom/roblox/client/y/a;

    invoke-static {p1}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object p1

    const-string v0, "nullActivity"

    invoke-virtual {p1, v2, v0}, Lcom/roblox/client/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/roblox/client/y/a$1;->a:Lcom/roblox/client/g/a$a;

    invoke-interface {p1}, Lcom/roblox/client/g/a$a;->b()V

    goto :goto_1

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task exception. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/roblox/client/y/a$1;->c:Lcom/roblox/client/y/a;

    invoke-static {p1}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object p1

    const-string v0, "noResolution"

    invoke-virtual {p1, v2, v0}, Lcom/roblox/client/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/roblox/client/y/a$1;->a:Lcom/roblox/client/g/a$a;

    invoke-interface {p1}, Lcom/roblox/client/g/a$a;->b()V

    :goto_1
    return-void
.end method
