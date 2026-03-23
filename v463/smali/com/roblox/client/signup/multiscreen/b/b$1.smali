.class Lcom/roblox/client/signup/multiscreen/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/signup/multiscreen/b/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/b;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->b:Lcom/roblox/client/signup/multiscreen/b/b;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->b:Lcom/roblox/client/signup/multiscreen/b/b;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->a:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/b$a;->b:Lcom/roblox/client/signup/multiscreen/a/b$a;

    .line 39
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/b;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/b$a;)Lcom/roblox/client/signup/multiscreen/a/b;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->b:Lcom/roblox/client/signup/multiscreen/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/b;->a(Lcom/roblox/client/signup/multiscreen/b/b;Z)Z

    .line 45
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->b:Lcom/roblox/client/signup/multiscreen/b/b;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/b;->a(Lcom/roblox/client/signup/multiscreen/b/b;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->b:Lcom/roblox/client/signup/multiscreen/b/b;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->a:Ljava/lang/String;

    .line 47
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/b;->a(Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/a/b;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->b:Lcom/roblox/client/signup/multiscreen/b/b;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/b$1;->a:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/b$a;->c:Lcom/roblox/client/signup/multiscreen/a/b$a;

    .line 51
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/b;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/b$a;)Lcom/roblox/client/signup/multiscreen/a/b;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/b;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
