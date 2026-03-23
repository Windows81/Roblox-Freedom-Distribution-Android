.class Lcom/roblox/client/locale/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/f;->a(Landroid/content/Context;ZLcom/roblox/client/locale/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/roblox/client/locale/f$a;

.field final synthetic d:Lcom/roblox/client/locale/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/f;ZLandroid/content/Context;Lcom/roblox/client/locale/f$a;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/roblox/client/locale/f$1;->d:Lcom/roblox/client/locale/f;

    iput-boolean p2, p0, Lcom/roblox/client/locale/f$1;->a:Z

    iput-object p3, p0, Lcom/roblox/client/locale/f$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/roblox/client/locale/f$1;->c:Lcom/roblox/client/locale/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/c;)V
    .locals 3

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/roblox/client/locale/f$1;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    const-string v0, "rbx.locale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persisting loginSignUpLocale locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/roblox/client/locale/f$1;->d:Lcom/roblox/client/locale/f;

    iget-object v0, v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    iget-object v1, p0, Lcom/roblox/client/locale/f$1;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/locale/a;->a(Lcom/roblox/client/locale/c;Landroid/content/Context;)V

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/locale/f$1;->d:Lcom/roblox/client/locale/f;

    iget-object v0, v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    sget-object v1, Lcom/roblox/client/locale/a$a;->a:Lcom/roblox/client/locale/a$a;

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/a;->a(Lcom/roblox/client/locale/a$a;)V

    .line 40
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/locale/f$1;->d:Lcom/roblox/client/locale/f;

    iget-object v0, v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    invoke-virtual {v0, p3}, Lcom/roblox/client/locale/a;->c(Lcom/roblox/client/locale/c;)V

    .line 41
    iget-object v0, p0, Lcom/roblox/client/locale/f$1;->d:Lcom/roblox/client/locale/f;

    iget-object v0, v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    invoke-virtual {v0, p2}, Lcom/roblox/client/locale/a;->d(Lcom/roblox/client/locale/c;)V

    .line 42
    iget-object v0, p0, Lcom/roblox/client/locale/f$1;->d:Lcom/roblox/client/locale/f;

    iget-object v0, v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    iget-object v1, p0, Lcom/roblox/client/locale/f$1;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/locale/a;->b(Lcom/roblox/client/locale/c;Landroid/content/Context;)Z

    .line 43
    iget-object v0, p0, Lcom/roblox/client/locale/f$1;->c:Lcom/roblox/client/locale/f$a;

    invoke-interface {v0}, Lcom/roblox/client/locale/f$a;->a()V

    .line 44
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/locale/f$1;->d:Lcom/roblox/client/locale/f;

    iget-object v0, v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    iget-object v1, p0, Lcom/roblox/client/locale/f$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;)Lcom/roblox/client/locale/c;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/locale/f$1;->d:Lcom/roblox/client/locale/f;

    iget-object v0, v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    sget-object v1, Lcom/roblox/client/locale/a$a;->b:Lcom/roblox/client/locale/a$a;

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/a;->a(Lcom/roblox/client/locale/a$a;)V

    move-object p1, p2

    goto :goto_1
.end method
