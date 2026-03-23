.class Lcom/roblox/client/signup/UsernameSignUpEditText$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/UsernameSignUpEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/UsernameSignUpEditText;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/UsernameSignUpEditText;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$4;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$4;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->i(Lcom/roblox/client/signup/UsernameSignUpEditText;)Lcom/roblox/client/signup/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$4;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->i(Lcom/roblox/client/signup/UsernameSignUpEditText;)Lcom/roblox/client/signup/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/signup/b;->a()V

    :cond_0
    return-void
.end method
