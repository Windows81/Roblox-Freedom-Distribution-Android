.class Lcom/roblox/client/locale/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/i;->a(Landroid/content/Context;ZLcom/roblox/client/locale/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/roblox/client/locale/i$a;

.field final synthetic d:Lcom/roblox/client/locale/i;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/i;ZLandroid/content/Context;Lcom/roblox/client/locale/i$a;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/roblox/client/locale/i$1;->d:Lcom/roblox/client/locale/i;

    iput-boolean p2, p0, Lcom/roblox/client/locale/i$1;->a:Z

    iput-object p3, p0, Lcom/roblox/client/locale/i$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/roblox/client/locale/i$1;->c:Lcom/roblox/client/locale/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/locale/f;Lcom/roblox/client/locale/f;Ljava/lang/String;)V
    .locals 2

    .line 27
    iget-boolean v0, p0, Lcom/roblox/client/locale/i$1;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persisting loginSignUpLocale locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.locale"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/roblox/client/locale/i$1;->d:Lcom/roblox/client/locale/i;

    iget-object v0, v0, Lcom/roblox/client/locale/i;->b:Lcom/roblox/client/locale/b;

    iget-object v1, p0, Lcom/roblox/client/locale/i$1;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/locale/b;->a(Lcom/roblox/client/locale/f;Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/locale/i$1;->d:Lcom/roblox/client/locale/i;

    iget-object p1, p1, Lcom/roblox/client/locale/i;->b:Lcom/roblox/client/locale/b;

    iget-object v0, p0, Lcom/roblox/client/locale/i$1;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/roblox/client/locale/b;->a(Landroid/content/Context;)Lcom/roblox/client/locale/f;

    move-result-object p1

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/locale/i$1;->d:Lcom/roblox/client/locale/i;

    iget-object v0, v0, Lcom/roblox/client/locale/i;->b:Lcom/roblox/client/locale/b;

    sget-object v1, Lcom/roblox/client/locale/b$a;->a:Lcom/roblox/client/locale/b$a;

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/b;->a(Lcom/roblox/client/locale/b$a;)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/locale/i$1;->d:Lcom/roblox/client/locale/i;

    iget-object p1, p1, Lcom/roblox/client/locale/i;->b:Lcom/roblox/client/locale/b;

    sget-object v0, Lcom/roblox/client/locale/b$a;->b:Lcom/roblox/client/locale/b$a;

    invoke-virtual {p1, v0}, Lcom/roblox/client/locale/b;->a(Lcom/roblox/client/locale/b$a;)V

    move-object p1, p2

    .line 40
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/locale/i$1;->d:Lcom/roblox/client/locale/i;

    iget-object v0, v0, Lcom/roblox/client/locale/i;->b:Lcom/roblox/client/locale/b;

    iget-object v1, p0, Lcom/roblox/client/locale/i$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/roblox/client/locale/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    iget-object p3, p0, Lcom/roblox/client/locale/i$1;->d:Lcom/roblox/client/locale/i;

    iget-object p3, p3, Lcom/roblox/client/locale/i;->b:Lcom/roblox/client/locale/b;

    invoke-virtual {p3, p2}, Lcom/roblox/client/locale/b;->b(Lcom/roblox/client/locale/f;)V

    .line 42
    iget-object p2, p0, Lcom/roblox/client/locale/i$1;->d:Lcom/roblox/client/locale/i;

    iget-object p2, p2, Lcom/roblox/client/locale/i;->b:Lcom/roblox/client/locale/b;

    iget-object p3, p0, Lcom/roblox/client/locale/i$1;->b:Landroid/content/Context;

    invoke-virtual {p2, p1, p3}, Lcom/roblox/client/locale/b;->b(Lcom/roblox/client/locale/f;Landroid/content/Context;)Z

    move-result p1

    .line 43
    iget-object p2, p0, Lcom/roblox/client/locale/i$1;->c:Lcom/roblox/client/locale/i$a;

    invoke-interface {p2, p1}, Lcom/roblox/client/locale/i$a;->a(Z)V

    return-void
.end method
