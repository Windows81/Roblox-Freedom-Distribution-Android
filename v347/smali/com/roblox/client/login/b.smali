.class Lcom/roblox/client/login/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/login/b$a;
    }
.end annotation


# static fields
.field private static d:Lcom/roblox/client/login/b;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/roblox/client/login/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final e:Lcom/roblox/client/i/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/login/b;->d:Lcom/roblox/client/login/b;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/roblox/client/login/b$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/b$1;-><init>(Lcom/roblox/client/login/b;)V

    iput-object v0, p0, Lcom/roblox/client/login/b;->e:Lcom/roblox/client/i/h$c;

    .line 43
    const-string v0, "LoginHelper"

    const-string v1, "LoginHelper created."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public static a()Lcom/roblox/client/login/b;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/roblox/client/login/b;->d:Lcom/roblox/client/login/b;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/roblox/client/login/b;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/roblox/client/login/b;->d:Lcom/roblox/client/login/b;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/roblox/client/login/b;

    invoke-direct {v0}, Lcom/roblox/client/login/b;-><init>()V

    sput-object v0, Lcom/roblox/client/login/b;->d:Lcom/roblox/client/login/b;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/roblox/client/login/b;->d:Lcom/roblox/client/login/b;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/roblox/client/login/b;->b()Lcom/roblox/client/login/c;

    move-result-object v0

    return-object v0
.end method

.method private b()Lcom/roblox/client/login/c;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/roblox/client/login/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/login/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    new-instance v0, Lcom/roblox/client/login/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/login/b$a;-><init>(Lcom/roblox/client/login/b$1;)V

    .line 64
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/roblox/client/login/b;->a:Ljava/lang/ref/WeakReference;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/login/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/login/c;

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/login/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/roblox/client/login/b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(I)V
    .locals 4

    .prologue
    .line 83
    const-string v0, "LoginHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReCaptchaFinished: resultCode => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 86
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/login/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/login/b;->e:Lcom/roblox/client/i/h$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/i/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/i/h$c;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/login/b;->b()Lcom/roblox/client/login/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/c;->k()V

    goto :goto_0
.end method

.method a(J)V
    .locals 3

    .prologue
    .line 77
    const-string v0, "LoginHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on2SVCodeVerified: userId => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/i/h;->b(J)V

    .line 79
    invoke-direct {p0}, Lcom/roblox/client/login/b;->b()Lcom/roblox/client/login/c;

    move-result-object v0

    const/16 v1, 0x68

    invoke-interface {v0, v1}, Lcom/roblox/client/login/c;->d(I)V

    .line 80
    return-void
.end method

.method public a(Lcom/roblox/client/login/c;)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/client/login/b;->a:Ljava/lang/ref/WeakReference;

    .line 48
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    const-string v0, "LoginHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login: username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/roblox/client/login/b;->b:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/roblox/client/login/b;->c:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/login/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/login/b;->e:Lcom/roblox/client/i/h$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/i/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/i/h$c;)V

    .line 74
    return-void
.end method

.method b(Lcom/roblox/client/login/c;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/roblox/client/login/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/roblox/client/login/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/login/c;

    .line 53
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/login/b;->a:Ljava/lang/ref/WeakReference;

    .line 57
    :cond_0
    return-void
.end method
