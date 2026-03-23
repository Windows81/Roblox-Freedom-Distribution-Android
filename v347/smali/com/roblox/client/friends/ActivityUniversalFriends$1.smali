.class Lcom/roblox/client/friends/ActivityUniversalFriends$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/TabLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/ActivityUniversalFriends;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/ActivityUniversalFriends;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/ActivityUniversalFriends;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends$1;->a:Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/TabLayout$e;)V
    .locals 3

    .prologue
    .line 138
    const-string v0, "ActivityUniversalFriends"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected. tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->b()Landroid/view/View;

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    .line 141
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Tab customView is null on tabSelected."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 144
    :cond_0
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 147
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 172
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Selected tab tag not recognized."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends$1;->a:Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Lcom/roblox/client/friends/ActivityUniversalFriends;I)I

    goto :goto_0

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends$1;->a:Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-static {v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Lcom/roblox/client/friends/ActivityUniversalFriends;)Lcom/roblox/client/friends/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/friends/b;->g()V

    goto :goto_1

    .line 157
    :pswitch_1
    iget-object v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends$1;->a:Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-static {v1}, Lcom/roblox/client/friends/ActivityUniversalFriends;->b(Lcom/roblox/client/friends/ActivityUniversalFriends;)V

    .line 159
    const v1, 0x7f07078c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 160
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends$1;->a:Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-static {v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->c(Lcom/roblox/client/friends/ActivityUniversalFriends;)V

    goto :goto_1

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/support/design/widget/TabLayout$e;)V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->b()Landroid/view/View;

    move-result-object v0

    .line 181
    if-nez v0, :cond_1

    .line 182
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Tab customView is null on tabUnselected."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 187
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 188
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v2, v2, -0xa

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v2, v2, -0xa

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 194
    const v1, 0x7f070800

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    const v1, 0x7f07078e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public c(Landroid/support/design/widget/TabLayout$e;)V
    .locals 3

    .prologue
    .line 201
    const-string v0, "ActivityUniversalFriends"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabReselected. tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends$1;->a:Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-static {v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Lcom/roblox/client/friends/ActivityUniversalFriends;)Lcom/roblox/client/friends/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/friends/b;->g()V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends$1;->a:Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-static {v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->b(Lcom/roblox/client/friends/ActivityUniversalFriends;)V

    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends$1;->a:Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-static {v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->c(Lcom/roblox/client/friends/ActivityUniversalFriends;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
