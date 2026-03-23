.class Lcom/roblox/client/signup/multiscreen/c/g$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/g$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/g$4;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/g$4;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$4$1;->a:Lcom/roblox/client/signup/multiscreen/c/g$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 343
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g$4$1;->a:Lcom/roblox/client/signup/multiscreen/c/g$4;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/c/g$4;->d:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/g;->i(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/components/RbxProgressButton;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/g$4$1;->a:Lcom/roblox/client/signup/multiscreen/c/g$4;

    iget-object v2, v2, Lcom/roblox/client/signup/multiscreen/c/g$4;->b:Landroid/content/Context;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_RegisteringWord:I

    const-string v4, "Authentication_SignUp_Response_RegisteringWord"

    invoke-static {v2, v4, v3}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g$4$1;->a:Lcom/roblox/client/signup/multiscreen/c/g$4;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/c/g$4;->d:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/multiscreen/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g$4$1;->a:Lcom/roblox/client/signup/multiscreen/c/g$4;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/c/g$4;->c:Lcom/roblox/client/signup/multiscreen/a/a;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/g$4$1;->a:Lcom/roblox/client/signup/multiscreen/c/g$4;

    iget-object v2, v2, Lcom/roblox/client/signup/multiscreen/c/g$4;->d:Lcom/roblox/client/signup/multiscreen/c/g;

    .line 349
    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/multiscreen/e/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/signup/multiscreen/e/f;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/c/g$4$1;->a:Lcom/roblox/client/signup/multiscreen/c/g$4;

    iget-object v3, v3, Lcom/roblox/client/signup/multiscreen/c/g$4;->d:Lcom/roblox/client/signup/multiscreen/c/g;

    .line 350
    invoke-static {v3}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/multiscreen/e/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/signup/multiscreen/e/f;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 346
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/e/f;->a(ILcom/roblox/client/signup/multiscreen/a/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
