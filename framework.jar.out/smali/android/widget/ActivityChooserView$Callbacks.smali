.class Landroid/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;)V

    return-void
.end method

.method private notifyOnDismissListener()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$1200(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$1200(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 613
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 571
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$800(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 572
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 573
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 574
    .local v0, defaultActivity:Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    .line 575
    .local v1, index:I
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 576
    .local v2, launchIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 577
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$900(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 585
    .end local v0           #defaultActivity:Landroid/content/pm/ResolveInfo;
    .end local v1           #index:I
    .end local v2           #launchIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$1000(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 580
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    const/4 v4, 0x0

    #setter for: Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v3, v4}, Landroid/widget/ActivityChooserView;->access$602(Landroid/widget/ActivityChooserView;Z)Z

    .line 581
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mInitialActivityCount:I
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->access$1100(Landroid/widget/ActivityChooserView;)I

    move-result v4

    #calls: Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v3, v4}, Landroid/widget/ActivityChooserView;->access$500(Landroid/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 583
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 603
    invoke-direct {p0}, Landroid/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 604
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 607
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 542
    .local v0, adapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-virtual {v0, p3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v1

    .line 543
    .local v1, itemViewType:I
    packed-switch v1, :pswitch_data_0

    .line 565
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 545
    :pswitch_0
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    const v4, 0x7fffffff

    #calls: Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v3, v4}, Landroid/widget/ActivityChooserView;->access$500(Landroid/widget/ActivityChooserView;I)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 548
    :pswitch_1
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 549
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$600(Landroid/widget/ActivityChooserView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 551
    if-lez p3, :cond_0

    .line 552
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_0

    .line 557
    :cond_1
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 558
    :goto_1
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 559
    .local v2, launchIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 560
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$700(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 557
    .end local v2           #launchIntent:Landroid/content/Intent;
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 590
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$800(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 591
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 592
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #setter for: Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v0, v2}, Landroid/widget/ActivityChooserView;->access$602(Landroid/widget/ActivityChooserView;Z)Z

    .line 593
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mInitialActivityCount:I
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$1100(Landroid/widget/ActivityChooserView;)I

    move-result v1

    #calls: Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v0, v1}, Landroid/widget/ActivityChooserView;->access$500(Landroid/widget/ActivityChooserView;I)V

    .line 598
    :cond_0
    return v2

    .line 596
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
