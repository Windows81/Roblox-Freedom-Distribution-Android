.class Lcom/roblox/client/signup/multiscreen/b/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/p;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/signup/multiscreen/b/p;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/a/e;

    .line 41
    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/a/e;-><init>(Lcom/roblox/client/phonenumber/PhonePrefix;Ljava/lang/String;)V

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/f$a;->c:Lcom/roblox/client/signup/multiscreen/a/f$a;

    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/f;->a(Lcom/roblox/client/signup/multiscreen/a/e;Lcom/roblox/client/signup/multiscreen/a/f$a;)Lcom/roblox/client/signup/multiscreen/a/f;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object v0

    iget-object v0, v0, Lcom/roblox/client/phonenumber/PhonePrefix;->prefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/a/e;

    .line 45
    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/a/e;-><init>(Lcom/roblox/client/phonenumber/PhonePrefix;Ljava/lang/String;)V

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/f$a;->d:Lcom/roblox/client/signup/multiscreen/a/f$a;

    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/f;->a(Lcom/roblox/client/signup/multiscreen/a/e;Lcom/roblox/client/signup/multiscreen/a/f$a;)Lcom/roblox/client/signup/multiscreen/a/f;

    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/p;->b(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;Z)Z

    .line 50
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/a/e;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/a/e;-><init>(Lcom/roblox/client/phonenumber/PhonePrefix;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;Lcom/roblox/client/signup/multiscreen/a/e;)Lcom/roblox/client/signup/multiscreen/a/e;

    .line 51
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    .line 52
    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/p;->b(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/signup/multiscreen/a/e;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/f;->a(Lcom/roblox/client/signup/multiscreen/a/e;)Lcom/roblox/client/signup/multiscreen/a/f;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/p;->c(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p$1;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    .line 56
    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/p;->b(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/signup/multiscreen/a/e;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/f$a;->f:Lcom/roblox/client/signup/multiscreen/a/f$a;

    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/f;->a(Lcom/roblox/client/signup/multiscreen/a/e;Lcom/roblox/client/signup/multiscreen/a/f$a;)Lcom/roblox/client/signup/multiscreen/a/f;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/p;->d(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
