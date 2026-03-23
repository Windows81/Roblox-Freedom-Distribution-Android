.class abstract Lcom/roblox/client/contacts/c$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/contacts/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field a:Lde/hdodenhof/circleimageview/CircleImageView;

.field b:Lcom/roblox/client/components/RbxTextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 147
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/roblox/client/contacts/c$a;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/d/a/t;->a(Landroid/content/Context;)Lcom/d/a/t;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Lcom/d/a/t;->a(Ljava/lang/String;)Lcom/d/a/x;

    move-result-object v0

    const v1, 0x7f0706fa

    .line 154
    invoke-virtual {v0, v1}, Lcom/d/a/x;->a(I)Lcom/d/a/x;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/contacts/c$a;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 155
    invoke-virtual {v0, v1}, Lcom/d/a/x;->a(Landroid/widget/ImageView;)V

    .line 156
    return-void
.end method
