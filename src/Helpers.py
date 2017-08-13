def list_compare(first_list = [], second_list = []):
    '''
    Searching for similar items from first_list in second_list
    '''
    new_item = []
    for it in first_list:
        if it not in second_list:
            new_item.append(it)
    return new_item
