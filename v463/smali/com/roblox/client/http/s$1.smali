.class Lcom/roblox/client/http/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/http/s;->d(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/http/s;


# direct methods
.method constructor <init>(Lcom/roblox/client/http/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/roblox/client/http/s$1;->c:Lcom/roblox/client/http/s;

    iput-object p2, p0, Lcom/roblox/client/http/s$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/client/http/s$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/roblox/client/http/s$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/j/a;->a(Ljava/lang/String;)Lcom/roblox/client/j/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/roblox/client/http/s$1;->c:Lcom/roblox/client/http/s;

    invoke-static {v1}, Lcom/roblox/client/http/s;->a(Lcom/roblox/client/http/s;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/http/s$1;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/roblox/client/j/a$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    iget-object v1, p0, Lcom/roblox/client/http/s$1;->c:Lcom/roblox/client/http/s;

    invoke-static {v1}, Lcom/roblox/client/http/s;->a(Lcom/roblox/client/http/s;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/roblox/client/http/s$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/roblox/client/j/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
