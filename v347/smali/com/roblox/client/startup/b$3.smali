.class Lcom/roblox/client/startup/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/db/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/locale/c/a;

.field final synthetic b:Lcom/roblox/client/locale/c;

.field final synthetic c:Lcom/roblox/client/startup/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/b;Lcom/roblox/client/locale/c/a;Lcom/roblox/client/locale/c;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/roblox/client/startup/b$3;->c:Lcom/roblox/client/startup/b;

    iput-object p2, p0, Lcom/roblox/client/startup/b$3;->a:Lcom/roblox/client/locale/c/a;

    iput-object p3, p0, Lcom/roblox/client/startup/b$3;->b:Lcom/roblox/client/locale/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/roblox/client/startup/b$3;->a:Lcom/roblox/client/locale/c/a;

    iget-object v1, p0, Lcom/roblox/client/startup/b$3;->b:Lcom/roblox/client/locale/c;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/locale/c/a;->a(Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V

    .line 263
    :cond_0
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/roblox/client/b/d;->a(Z)V

    .line 264
    iget-object v0, p0, Lcom/roblox/client/startup/b$3;->c:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->c(Lcom/roblox/client/startup/b;)V

    .line 265
    iget-object v0, p0, Lcom/roblox/client/startup/b$3;->a:Lcom/roblox/client/locale/c/a;

    iget-object v1, p0, Lcom/roblox/client/startup/b$3;->c:Lcom/roblox/client/startup/b;

    invoke-static {v1}, Lcom/roblox/client/startup/b;->d(Lcom/roblox/client/startup/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/locale/c/a;->a(Landroid/content/Context;Z)V

    .line 266
    return-void
.end method
