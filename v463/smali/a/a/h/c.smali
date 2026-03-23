.class public La/a/h/c;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/h/c$a;
    }
.end annotation


# instance fields
.field private a:La/a/h/c$a;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, La/a/h/c;->b:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, La/a/h/c;->start()V

    return-void
.end method


# virtual methods
.method a(La/a/h/b;)V
    .locals 1

    .line 33
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 34
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    iget-object p1, p0, La/a/h/c;->a:La/a/h/c$a;

    invoke-virtual {p1, v0}, La/a/h/c$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onLooperPrepared()V
    .locals 4

    .line 27
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 28
    new-instance v0, La/a/h/c$a;

    invoke-virtual {p0}, La/a/h/c;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, La/a/h/c;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, La/a/h/c$a;-><init>(La/a/h/c;Landroid/os/Looper;Ljava/lang/String;La/a/h/c$1;)V

    iput-object v0, p0, La/a/h/c;->a:La/a/h/c$a;

    return-void
.end method
