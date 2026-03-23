.class Lcom/roblox/client/contacts/c$f;
.super Lcom/roblox/client/contacts/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/contacts/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field c:Lcom/roblox/client/components/RbxTextView;

.field d:Lcom/roblox/client/components/RbxTextView;

.field e:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$a;-><init>(Landroid/view/View;)V

    .line 167
    const v0, 0x7f08006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$f;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 168
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$f;->b:Lcom/roblox/client/components/RbxTextView;

    .line 169
    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$f;->c:Lcom/roblox/client/components/RbxTextView;

    .line 170
    const v0, 0x7f08006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$f;->d:Lcom/roblox/client/components/RbxTextView;

    .line 171
    const v0, 0x7f08006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$f;->e:Landroid/widget/Button;

    .line 172
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    const v2, 0x7f0707e2

    .line 214
    packed-switch p1, :pswitch_data_0

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->e:Landroid/widget/Button;

    const v1, 0x7f0e016a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->e:Landroid/widget/Button;

    const v1, 0x7f0707e0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 230
    :goto_0
    return-void

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->e:Landroid/widget/Button;

    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->e:Landroid/widget/Button;

    const v1, 0x7f0e0170

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 221
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/contacts/c$f;I)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$f;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V
    .locals 6

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f0706fa

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->b:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/contacts/c$f;->a(I)V

    .line 186
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->c:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->d:Lcom/roblox/client/components/RbxTextView;

    iget-object v1, p0, Lcom/roblox/client/contacts/c$f;->d:Lcom/roblox/client/components/RbxTextView;

    .line 188
    invoke-virtual {v1}, Lcom/roblox/client/components/RbxTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0176

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 189
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 188
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->e:Landroid/widget/Button;

    new-instance v1, Lcom/roblox/client/contacts/c$f$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/contacts/c$f$1;-><init>(Lcom/roblox/client/contacts/c$f;Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/c$f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/d/a/t;->a(Landroid/content/Context;)Lcom/d/a/t;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p1}, Lcom/d/a/t;->a(Ljava/lang/String;)Lcom/d/a/x;

    move-result-object v0

    const v1, 0x7f0706fa

    .line 209
    invoke-virtual {v0, v1}, Lcom/d/a/x;->a(I)Lcom/d/a/x;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/contacts/c$f;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 210
    invoke-virtual {v0, v1}, Lcom/d/a/x;->a(Landroid/widget/ImageView;)V

    .line 211
    return-void
.end method
