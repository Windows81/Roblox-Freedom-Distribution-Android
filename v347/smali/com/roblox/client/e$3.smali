.class Lcom/roblox/client/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/e;->onLuaTextBoxChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/roblox/client/e$3;->b:Lcom/roblox/client/e;

    iput-object p2, p0, Lcom/roblox/client/e$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/roblox/client/e$3;->b:Lcom/roblox/client/e;

    iget-object v0, v0, Lcom/roblox/client/e;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    iget-object v1, p0, Lcom/roblox/client/e$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
