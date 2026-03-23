.class Lcom/roblox/client/signup/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/b;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/roblox/client/signup/b$8;->a:Lcom/roblox/client/signup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lcom/roblox/client/l/c;

    invoke-direct {v0}, Lcom/roblox/client/l/c;-><init>()V

    .line 211
    const-string v1, "usernameKey"

    iget-object v2, p0, Lcom/roblox/client/signup/b$8;->a:Lcom/roblox/client/signup/b;

    invoke-static {v2}, Lcom/roblox/client/signup/b;->b(Lcom/roblox/client/signup/b;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/roblox/client/signup/b$8;->a:Lcom/roblox/client/signup/b;

    invoke-static {v1}, Lcom/roblox/client/signup/b;->a(Lcom/roblox/client/signup/b;)Lcom/roblox/client/l/a$a;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/signup/f$c;->l:Lcom/roblox/client/signup/f$c;

    invoke-interface {v1, v2, v0}, Lcom/roblox/client/l/a$a;->a(Lcom/roblox/client/l/h;Lcom/roblox/client/l/c;)V

    .line 213
    return-void
.end method
