.class La/a/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/a/g/a/a;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:La/a/c$1;


# direct methods
.method constructor <init>(La/a/c$1;La/a/g/a/a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 160
    iput-object p1, p0, La/a/c$1$1;->c:La/a/c$1;

    iput-object p2, p0, La/a/c$1$1;->a:La/a/g/a/a;

    iput-object p3, p0, La/a/c$1$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/g/c;)V
    .locals 1

    .line 163
    iget-object p1, p1, La/a/g/c;->b:La/a/g/c/a;

    sget-object v0, La/a/g/c/a;->b:La/a/g/c/a;

    if-ne p1, v0, :cond_0

    .line 164
    iget-object p1, p0, La/a/c$1$1;->c:La/a/c$1;

    iget-object p1, p1, La/a/c$1;->a:La/a/c;

    invoke-static {p1}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Timer - deleting record"

    invoke-static {p1, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, La/a/c$1$1;->c:La/a/c$1;

    iget-object p1, p1, La/a/c$1;->a:La/a/c;

    iget-object v0, p0, La/a/c$1$1;->a:La/a/g/a/a;

    invoke-virtual {p1, v0}, La/a/c;->a(La/a/g/a/a;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, La/a/c$1$1;->c:La/a/c$1;

    iget-object p1, p1, La/a/c$1;->a:La/a/c;

    invoke-static {p1}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Timer - closing record"

    invoke-static {p1, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p1, p0, La/a/c$1$1;->a:La/a/g/a/a;

    invoke-virtual {p1}, La/a/g/a/a;->d()Z

    .line 171
    :goto_0
    iget-object p1, p0, La/a/c$1$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
