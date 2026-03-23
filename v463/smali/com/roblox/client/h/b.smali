.class public Lcom/roblox/client/h/b;
.super Lcom/roblox/client/h/a;
.source "SourceFile"


# static fields
.field private static final j:Landroidx/databinding/ViewDataBinding$b;

.field private static final k:Landroid/util/SparseIntArray;


# instance fields
.field private final l:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/roblox/client/h/b;->k:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/roblox/client/o$f;->nearby_user_img_layout:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/roblox/client/h/b;->j:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lcom/roblox/client/h/b;->k:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/roblox/client/h/b;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/roblox/client/h/b;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x3

    .line 31
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lde/hdodenhof/circleimageview/CircleImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lde/hdodenhof/circleimageview/CircleImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/roblox/client/h/a;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/RelativeLayout;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 262
    iput-wide v0, p0, Lcom/roblox/client/h/b;->m:J

    .line 39
    const-class p1, Lcom/roblox/client/friends/nearby/a/a/a;

    invoke-virtual {p0, p1}, Lcom/roblox/client/h/b;->a(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/roblox/client/h/b;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 41
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/roblox/client/h/b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/roblox/client/h/b;->d:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, p3}, Lde/hdodenhof/circleimageview/CircleImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/roblox/client/h/b;->f:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, p3}, Lde/hdodenhof/circleimageview/CircleImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/roblox/client/h/b;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/roblox/client/h/b;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/roblox/client/h/b;->a(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/roblox/client/h/b;->i()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/friends/nearby/b/a/a;)V
    .locals 4

    .line 83
    iput-object p1, p0, Lcom/roblox/client/h/b;->i:Lcom/roblox/client/friends/nearby/b/a/a;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lcom/roblox/client/h/b;->m:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/roblox/client/h/b;->m:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget p1, Lcom/roblox/client/c;->b:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/h/b;->a(I)V

    .line 88
    invoke-super {p0}, Lcom/roblox/client/h/a;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected b()V
    .locals 27

    move-object/from16 v1, p0

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v2, v1, Lcom/roblox/client/h/b;->m:J

    const-wide/16 v4, 0x0

    .line 103
    iput-wide v4, v1, Lcom/roblox/client/h/b;->m:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v0, v1, Lcom/roblox/client/h/b;->i:Lcom/roblox/client/friends/nearby/b/a/a;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    const-wide/32 v12, 0x10000

    const-wide/16 v14, 0x10

    const/4 v10, 0x1

    const/16 v18, 0x0

    cmp-long v19, v8, v4

    if-eqz v19, :cond_f

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->d()Ljava/lang/String;

    move-result-object v19

    .line 130
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v20

    .line 132
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->b()Ljava/lang/String;

    move-result-object v21

    move/from16 v11, v20

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ne v11, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-ne v11, v10, :cond_2

    const/16 v22, 0x1

    goto :goto_2

    :cond_2
    const/16 v22, 0x0

    :goto_2
    if-nez v11, :cond_3

    const/16 v23, 0x1

    goto :goto_3

    :cond_3
    const/16 v23, 0x0

    :goto_3
    cmp-long v24, v8, v4

    if-eqz v24, :cond_5

    if-eqz v7, :cond_4

    const-wide/16 v8, 0x8

    or-long/2addr v2, v8

    const-wide/16 v8, 0x200

    goto :goto_4

    :cond_4
    const-wide/16 v8, 0x4

    or-long/2addr v2, v8

    const-wide/16 v8, 0x100

    :goto_4
    or-long/2addr v2, v8

    :cond_5
    and-long v8, v2, v14

    cmp-long v24, v8, v4

    if-eqz v24, :cond_7

    if-eqz v7, :cond_6

    const-wide/32 v8, 0x20000

    or-long/2addr v2, v8

    goto :goto_5

    :cond_6
    or-long/2addr v2, v12

    :cond_7
    :goto_5
    const-wide/16 v8, 0x3

    and-long v24, v2, v8

    cmp-long v8, v24, v4

    if-eqz v8, :cond_9

    if-eqz v22, :cond_8

    const-wide/16 v8, 0x20

    or-long/2addr v2, v8

    const-wide/16 v8, 0x80

    goto :goto_6

    :cond_8
    or-long/2addr v2, v14

    const-wide/16 v8, 0x40

    :goto_6
    or-long/2addr v2, v8

    :cond_9
    const-wide/16 v8, 0x3

    and-long v24, v2, v8

    cmp-long v8, v24, v4

    if-eqz v8, :cond_b

    if-eqz v23, :cond_a

    const-wide/16 v8, 0x800

    goto :goto_7

    :cond_a
    const-wide/16 v8, 0x400

    :goto_7
    or-long/2addr v2, v8

    .line 181
    :cond_b
    iget-object v8, v1, Lcom/roblox/client/h/b;->g:Landroid/widget/TextView;

    if-eqz v7, :cond_c

    sget v9, Lcom/roblox/client/o$c;->RbxBlue1:I

    goto :goto_8

    :cond_c
    sget v9, Lcom/roblox/client/o$c;->RbxGray2:I

    :goto_8
    invoke-static {v8, v9}, Lcom/roblox/client/h/b;->a(Landroid/view/View;I)I

    move-result v8

    if-eqz v7, :cond_d

    .line 183
    iget-object v9, v1, Lcom/roblox/client/h/b;->d:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v9}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v6, Lcom/roblox/client/o$e;->nearby_rainbow:I

    invoke-static {v9, v6}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_9

    :cond_d
    iget-object v6, v1, Lcom/roblox/client/h/b;->d:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v9, Lcom/roblox/client/o$e;->empty_drawable:I

    invoke-static {v6, v9}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_9
    if-eqz v23, :cond_e

    const/16 v24, 0x2

    goto :goto_a

    :cond_e
    const/16 v24, 0x1

    :goto_a
    move-object/from16 v9, v19

    move-object/from16 v10, v21

    move/from16 v26, v24

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    :goto_b
    const-wide/32 v23, 0x10040

    and-long v23, v2, v23

    cmp-long v21, v23, v4

    if-eqz v21, :cond_19

    if-eqz v0, :cond_10

    .line 195
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v11

    :cond_10
    const/4 v0, 0x3

    if-ne v11, v0, :cond_11

    const/16 v18, 0x1

    :cond_11
    and-long v23, v2, v12

    cmp-long v0, v23, v4

    if-eqz v0, :cond_13

    if-eqz v18, :cond_12

    const-wide/16 v23, 0x2000

    goto :goto_c

    :cond_12
    const-wide/16 v23, 0x1000

    :goto_c
    or-long v2, v2, v23

    :cond_13
    const-wide/16 v16, 0x40

    and-long v23, v2, v16

    cmp-long v0, v23, v4

    if-eqz v0, :cond_15

    if-eqz v18, :cond_14

    const-wide/32 v23, 0x8000

    goto :goto_d

    :cond_14
    const-wide/16 v23, 0x4000

    :goto_d
    or-long v2, v2, v23

    :cond_15
    and-long/2addr v12, v2

    cmp-long v0, v12, v4

    if-eqz v0, :cond_17

    .line 221
    iget-object v0, v1, Lcom/roblox/client/h/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v18, :cond_16

    sget v11, Lcom/roblox/client/o$j;->Features_Nearby_Label_Friend:I

    goto :goto_e

    :cond_16
    sget v11, Lcom/roblox/client/o$j;->Features_Nearby_Label_Empty:I

    :goto_e
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    :goto_f
    const-wide/16 v11, 0x40

    and-long/2addr v11, v2

    cmp-long v13, v11, v4

    if-eqz v13, :cond_1a

    .line 226
    iget-object v11, v1, Lcom/roblox/client/h/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v18, :cond_18

    sget v12, Lcom/roblox/client/o$e;->empty_drawable:I

    goto :goto_10

    :cond_18
    sget v12, Lcom/roblox/client/o$e;->nearby_plus_sign_blue:I

    :goto_10
    invoke-static {v11, v12}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_11

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    const/4 v11, 0x0

    :goto_11
    const-wide/16 v12, 0x3

    and-long/2addr v12, v2

    cmp-long v16, v12, v4

    if-eqz v16, :cond_1b

    if-eqz v22, :cond_1c

    .line 233
    iget-object v11, v1, Lcom/roblox/client/h/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v4, Lcom/roblox/client/o$e;->nearby_plus_sign_gray:I

    invoke-static {v11, v4}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_12

    :cond_1b
    const/4 v11, 0x0

    :cond_1c
    :goto_12
    and-long/2addr v2, v14

    const-wide/16 v4, 0x0

    cmp-long v14, v2, v4

    if-eqz v14, :cond_1d

    if-eqz v7, :cond_1e

    .line 238
    iget-object v0, v1, Lcom/roblox/client/h/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/roblox/client/o$j;->Features_Nearby_Label_Accept:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_1d
    const/4 v0, 0x0

    :cond_1e
    :goto_13
    cmp-long v2, v12, v4

    if-eqz v2, :cond_1f

    if-eqz v22, :cond_20

    .line 244
    iget-object v0, v1, Lcom/roblox/client/h/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/roblox/client/o$j;->Features_Nearby_Label_Pending:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    :goto_14
    cmp-long v2, v12, v4

    if-eqz v2, :cond_21

    .line 250
    iget-object v2, v1, Lcom/roblox/client/h/b;->c:Landroid/widget/ImageView;

    invoke-static {v2, v11}, Landroidx/databinding/a/a;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v2, v1, Lcom/roblox/client/h/b;->d:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v2, v6}, Landroidx/databinding/a/a;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v2, v1, Lcom/roblox/client/h/b;->b:Landroidx/databinding/e;

    invoke-interface {v2}, Landroidx/databinding/e;->a()Lcom/roblox/client/friends/nearby/a/a/a;

    move-result-object v2

    iget-object v3, v1, Lcom/roblox/client/h/b;->f:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v2, v3, v10}, Lcom/roblox/client/friends/nearby/a/a/a;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 253
    iget-object v2, v1, Lcom/roblox/client/h/b;->g:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/databinding/a/b;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, v1, Lcom/roblox/client/h/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object v0, v1, Lcom/roblox/client/h/b;->h:Landroid/widget/TextView;

    move/from16 v2, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 256
    iget-object v0, v1, Lcom/roblox/client/h/b;->h:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/a/b;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_21
    return-void

    :catchall_0
    move-exception v0

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 5

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/roblox/client/h/b;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 64
    monitor-exit p0

    return v0

    .line 66
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()V
    .locals 2

    .line 54
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 55
    :try_start_0
    iput-wide v0, p0, Lcom/roblox/client/h/b;->m:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lcom/roblox/client/h/b;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
