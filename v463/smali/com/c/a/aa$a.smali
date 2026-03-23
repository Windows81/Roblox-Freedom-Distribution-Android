.class Lcom/c/a/aa$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/c/a/aa;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/c/a/aa;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    iput-object p2, p0, Lcom/c/a/aa$a;->a:Lcom/c/a/aa;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 153
    sget-object v0, Lcom/c/a/t;->a:Landroid/os/Handler;

    new-instance v1, Lcom/c/a/aa$a$1;

    invoke-direct {v1, p0, p1}, Lcom/c/a/aa$a$1;-><init>(Lcom/c/a/aa$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/c/a/aa$a;->a:Lcom/c/a/aa;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcom/c/a/aa;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/c/a/aa$a;->a:Lcom/c/a/aa;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/c/a/aa;->c(J)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/c/a/aa$a;->a:Lcom/c/a/aa;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/c/a/aa;->b(J)V

    goto :goto_0

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/c/a/aa$a;->a:Lcom/c/a/aa;

    invoke-virtual {p1}, Lcom/c/a/aa;->d()V

    goto :goto_0

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/c/a/aa$a;->a:Lcom/c/a/aa;

    invoke-virtual {p1}, Lcom/c/a/aa;->c()V

    :goto_0
    return-void
.end method
