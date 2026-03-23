.class Lcom/roblox/client/signup/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/RbxGenderPicker$a;


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
    .line 255
    iput-object p1, p0, Lcom/roblox/client/signup/b$3;->a:Lcom/roblox/client/signup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/components/RbxButton;)V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/roblox/client/signup/b$3;->a:Lcom/roblox/client/signup/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/p;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 259
    new-instance v0, Lcom/roblox/client/l/c;

    invoke-direct {v0}, Lcom/roblox/client/l/c;-><init>()V

    .line 260
    const-string v1, "genderKey"

    iget-object v2, p0, Lcom/roblox/client/signup/b$3;->a:Lcom/roblox/client/signup/b;

    iget-object v2, v2, Lcom/roblox/client/signup/b;->f:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v2}, Lcom/roblox/client/components/RbxGenderPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/l/c;->a(Ljava/lang/String;I)V

    .line 261
    iget-object v1, p0, Lcom/roblox/client/signup/b$3;->a:Lcom/roblox/client/signup/b;

    invoke-static {v1}, Lcom/roblox/client/signup/b;->a(Lcom/roblox/client/signup/b;)Lcom/roblox/client/l/a$a;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/signup/f$c;->j:Lcom/roblox/client/signup/f$c;

    invoke-interface {v1, v2, v0}, Lcom/roblox/client/l/a$a;->a(Lcom/roblox/client/l/h;Lcom/roblox/client/l/c;)V

    .line 262
    return-void
.end method
