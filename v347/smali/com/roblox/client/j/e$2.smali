.class Lcom/roblox/client/j/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/j/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/j/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/j/e;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/roblox/client/j/e$2;->a:Lcom/roblox/client/j/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/roblox/client/j/e$2;->a:Lcom/roblox/client/j/e;

    invoke-static {v0}, Lcom/roblox/client/j/e;->a(Lcom/roblox/client/j/e;)Lcom/roblox/client/j/e$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/j/e$a;->b()I

    move-result v0

    .line 130
    packed-switch v0, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 132
    :pswitch_0
    const-string v0, "nativeMain"

    const-string v1, "searchClose"

    const-string v2, "users"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_1
    const-string v0, "nativeMain"

    const-string v1, "searchClose"

    const-string v2, "games"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_2
    const-string v0, "nativeMain"

    const-string v1, "searchClose"

    const-string v2, "catalog"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_3
    const-string v0, "nativeMain|friends"

    const-string v1, "searchClose"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
