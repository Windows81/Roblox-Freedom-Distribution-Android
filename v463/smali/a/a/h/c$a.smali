.class La/a/h/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:La/a/h/c;

.field private final transient c:Ljava/lang/String;


# direct methods
.method private constructor <init>(La/a/h/c;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, La/a/h/c$a;->b:La/a/h/c;

    .line 43
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    const-class p1, La/a/h/c$a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La/a/h/c$a;->c:Ljava/lang/String;

    .line 44
    iput-object p3, p0, La/a/h/c$a;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(La/a/h/c;Landroid/os/Looper;Ljava/lang/String;La/a/h/c$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, La/a/h/c$a;-><init>(La/a/h/c;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 49
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, La/a/h/b;

    .line 52
    iget-object v0, p1, La/a/h/b;->d:La/a/d/d;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, La/a/h/c$a;->c:Ljava/lang/String;

    const-string v1, "Sending using custom request handler"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p1, La/a/h/b;->d:La/a/d/d;

    iget-object v1, p1, La/a/h/b;->a:La/a/g/a;

    invoke-interface {v0, v1}, La/a/d/d;->a(La/a/g/a;)La/a/g/c;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, La/a/h/c$a;->c:Ljava/lang/String;

    const-string v1, "Sending report using default request handler"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p1, La/a/h/b;->a:La/a/g/a;

    invoke-static {v0}, La/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p1, La/a/h/b;->a:La/a/g/a;

    invoke-virtual {v1}, La/a/g/a;->a()Ljava/util/List;

    move-result-object v1

    .line 59
    iget-object v2, p0, La/a/h/c$a;->a:Ljava/lang/String;

    iget-object v3, p1, La/a/h/b;->a:La/a/g/a;

    iget-object v3, v3, La/a/g/a;->m:La/a/g/b/d;

    iget-object v4, p1, La/a/h/b;->c:La/a/d/b;

    invoke-static {v2, v0, v1, v3, v4}, La/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;La/a/g/b/d;La/a/d/b;)La/a/g/c;

    move-result-object v0

    .line 64
    :goto_0
    iget-object v1, p1, La/a/h/b;->b:La/a/d/c;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, La/a/h/c$a;->c:Ljava/lang/String;

    const-string v2, "Processing result using custom event"

    invoke-static {v1, v2}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p1, La/a/h/b;->b:La/a/d/c;

    invoke-interface {p1, v0}, La/a/d/c;->a(La/a/g/c;)V

    :cond_1
    return-void
.end method
