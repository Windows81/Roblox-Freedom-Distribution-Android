.class Lcom/roblox/client/signup/multiscreen/b/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/p;->b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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

    .line 67
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/p$2;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/p$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/ae/n;->b(Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/a/e;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/p$2;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/p$2;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object v1

    iget-object v1, v1, Lcom/roblox/client/phonenumber/PhonePrefix;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/a/e;->d()Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object v2

    iget-object v2, v2, Lcom/roblox/client/phonenumber/PhonePrefix;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Lcom/roblox/client/signup/multiscreen/a/e;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/p$2;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object v2

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/roblox/client/signup/multiscreen/a/e;-><init>(Lcom/roblox/client/phonenumber/PhonePrefix;Ljava/lang/String;)V

    move-object v0, v1

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed phoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumberValidator"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/p$2;->b:Lcom/roblox/client/signup/multiscreen/b/p;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/f$a;->e:Lcom/roblox/client/signup/multiscreen/a/f$a;

    .line 78
    invoke-static {v0, v2}, Lcom/roblox/client/signup/multiscreen/a/f;->a(Lcom/roblox/client/signup/multiscreen/a/e;Lcom/roblox/client/signup/multiscreen/a/f$a;)Lcom/roblox/client/signup/multiscreen/a/f;

    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Lcom/roblox/client/signup/multiscreen/b/p;->e(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V

    return-void
.end method
